class Article < ActiveRecord::Base

  belongs_to :category

  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item
  # ...
  private
  # ensure that there are no line items referencing this article
  def ensure_not_referenced_by_any_line_item
    if line_itmes.empty?
      return true
    else
      errors.add(:base, 'Line Items present')
      return false
    end
  end




  default_scope { where(active: true)}

  validates :title, :description, :image_url, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :title, :uniqueness => true
  validates :image_url, :format => {
      :with => %r{\.(gif|jpg|png)}i,
      :message => 'must be a URL for GIF, JPG or PNG image'
  }

end
