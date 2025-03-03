class Product < ApplicationRecord
  belongs_to :user
  has_rich_text :description
  has_many_attached :images
end
