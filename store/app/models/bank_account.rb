class BankAccount < ActiveRecord::Base
  has_many :orders
  belongs_to :user

end
