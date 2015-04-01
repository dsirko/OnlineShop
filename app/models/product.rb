class Product < ActiveRecord::Base
    validates :tittle, :description, :image_url, presence: true
    validates :tittle, length: {minimum: 6}
    validates :price, numericality: {greater_than_or_equal_to: 0.01}
    validates :tittle, uniqueness: true
    validates :image_url, allow_blank: true, format: {
                            with: %r{\.(gif|jpg|png)\Z}i,
                            message: 'must be a URL for GIF, JPG or PNG image.'
                            # URL ?????? ????????? ?? ??????????? ??????? GIF, JPG ??? PNG
                        }
  def self.latest
    Product.order(:updated_at).last
  end
end
