class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name # rubywoo
      t.decimal :cost
      t.string :brand
      t.string :img_path
      t.string :type #lipstick, eyeshadow
      t.string :description
      t.timestamp
    end
  end
end
