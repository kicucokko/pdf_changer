class Product < ApplicationRecord
  with_options presence: true do
    validates :product_name
    validates :quantity
    validates :price
  end
end
