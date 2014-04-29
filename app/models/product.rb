class Product < ActiveRecord::Base
  validates :title, :description, :image_url, presence: true
  validates_length_of :title, :minimum => 10, :message => "at least 10 characters"
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)\Z}i,
    message: 'must be URL for GIF, JPG or PNG image.'
  }
  validates :title, length: {minimum: 10}
end
