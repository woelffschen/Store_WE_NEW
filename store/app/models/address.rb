class Address < ActiveRecord::Base
  has_many :orders
  belongs_to :user
end
