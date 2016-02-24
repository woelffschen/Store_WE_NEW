class Article < ActiveRecord::Base

  scope :category, -> (category) {where category: category}

  belongs_to :category
  has_many :order_items

  enum colour: [ :without, :yellow, :red, :blue, :green, :black, :white ]
  enum size: [ :no, :S, :M, :L, :XL, :XXL]


  default_scope { where(active: true)}

  before_destroy :ensure_not_referenced_by_any_order_item

  validates :title, :description, :image_url, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :image_url, :format => {
      :with => %r{\.(gif|jpg|png)}i,
      :message => 'must be a URL for GIF, JPG or PNG image'
  }

  private

  def ensure_not_referenced_by_any_order_item
    if order_items.empty?
      return true
    else
      errors.add(:base, 'Order Item present')
      return false
    end
  end

end
