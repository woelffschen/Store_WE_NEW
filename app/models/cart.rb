class Cart < ActiveRecord::Base

  has_many :order_items, :dependent => :destroy

  def add_article(article_args)
    current_item = order_items.find_by(article_id: article_args[:article_id])

    if current_item
      current_item.quantity += article_args[:quantity].to_i
      current_item.save
    else
      current_item = order_items.build(article_args)
    end
      current_item
  end

  def total_price
    order_items.to_a.sum{ |item| item.total_price}
  end
end
