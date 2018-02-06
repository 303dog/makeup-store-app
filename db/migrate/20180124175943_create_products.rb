class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name # rubywoo
      t.integer :unit_cost
      t.string :brand
      t.string :img
      t.string :category #lipstick, eyeshadow
      t.string :description
      t.timestamp
    end
  end
end
