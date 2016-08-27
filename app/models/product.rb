class Product < ActiveRecord::Base
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true

  def avatar
    images.first.data.url(:medium)
  end
end
