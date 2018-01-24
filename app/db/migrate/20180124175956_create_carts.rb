class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |c|
      c.integer :user_id
      c.integer :product_id
      c.integer :quantity
      c.timestamp
    end
  end
end
