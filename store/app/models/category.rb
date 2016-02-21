class Category < ActiveRecord::Base
  has_many :articles

  #validates :category_id, inclusion: { :in => %w(dogs) }
end
