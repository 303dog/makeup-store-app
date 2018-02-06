class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |u|
      u.string :name
      u.string :email
      u.string :password_digest
      u.integer :cart_id
      u.timestamp
    end
  end
end
