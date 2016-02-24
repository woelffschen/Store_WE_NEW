class AddCartIdToOrderItem < ActiveRecord::Migration
  def change
    add_reference :order_items, :cart, index: true, foreign_key: true
  end
end
