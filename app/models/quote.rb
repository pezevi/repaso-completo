class Quote < ApplicationRecord
  belongs_to :user
  belongs_to :client
  has_many :quote_products
  has_many :products, through: :quote_products
end
