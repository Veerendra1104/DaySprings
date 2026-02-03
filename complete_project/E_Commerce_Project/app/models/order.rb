class Order < ApplicationRecord
  has_many :products, foreign_key: product_id
end
