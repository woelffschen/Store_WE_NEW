class AddArticleIdToOrderItem < ActiveRecord::Migration
  def change
    add_reference :order_items, :article, index: true, foreign_key: true
  end
end
