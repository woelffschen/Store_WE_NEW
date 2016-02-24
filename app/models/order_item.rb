class OrderItem < ActiveRecord::Base
  belongs_to :article
  belongs_to :cart

  def total_price
    article.price * quantity
  end
end
