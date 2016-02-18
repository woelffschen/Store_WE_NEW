class Category < ActiveRecord::Base
  has_many :artcats
  has_many :articles, through: :artcats
end
