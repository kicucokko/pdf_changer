class Customer < ApplicationRecord
  with_options presence: true do
    validates :customer_name
    validates :zip
    validates :prefecture_id,numericality: { other_than: 1,message: 'を選択してください'} 
    validates :city_block
  end
  extend ActiveHash::Associations::ActiveRecordExtensions 
  belongs_to :prefecture
end
