class Product < ApplicationRecord
  has_many :quote_products
  has_many :quotes, through: :quote_products
end
