class OrderItemsController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:create, :update, :destroy]
  before_action :set_order_item, only: [:update, :destroy]

  def create
    @cart.add_article(order_items_params)

    if @cart.save
      redirect_to @cart
    else
      flash[:error] = 'There was a problem adding this item to your shopping cart'
      redirect :back
    end
  end

  def update
    @order_item.update(quantity: params[:quantity]) if @order_item
    if @order_item.save
      render json: { itemPrice: @order_item.quantity * @order_item.article.price, subtotal: @cart.total_price}
    else
      flash.now[:error] = 'There was a problem updating your shopping cart'
    end
  end

  def destroy
    @order_item.destroy
    render json: { order_total: "€%.2f" % @cart.total_price }
  end

  private

  def set_order_item
    @order_item = @cart.order_items.find_by(id: params[:item_id])
  end

  def order_items_params
    params.permit(:quantity, :article_id, :cart_id)
  end


  end