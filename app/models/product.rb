class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews

  validates :price, presence: true, format: { with: /\A\d+(?:\.\d{0,2})?\z/}
  validates :title, presence: true
  validates :description, presence: true

  def average_rating
  	rates = self.reviews.inject(0) do |sum, review|
  		sum += review.rating
  	end
  	size = self.reviews.size
		return rates.to_f / size if size > 0
  end
end
