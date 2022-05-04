class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :customer_name, null: false
      t.string :zip,           null: false
      t.integer :prefecture_id,null: false
      t.string :city_block,    null: false
      t.string :build
      t.string :telephone
      t.string :facsimile
      t.timestamps
    end
  end
end
