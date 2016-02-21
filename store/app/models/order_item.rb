class OrderItem < ActiveRecord::Base
  has_one :article
  belongs_to :order
end
