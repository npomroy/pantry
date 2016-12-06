class CreateFoodItems < ActiveRecord::Migration[5.0]
  def change
    create_table :food_items do |t|
      t.integer :user_id
      t.string :name
      t.string :units
      t.string :supplier
      t.decimal :price_per_unit
      t.decimal :stored_amount
      t.date :purchase_date
      t.date :expiry
      t.text :description
      t.timestamps
    end
  end
end
