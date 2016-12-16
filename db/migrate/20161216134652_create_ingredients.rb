class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :units
      t.integer :serving_size
      t.decimal :price_per_serving
      t.string :type
      t.string :storage
      t.timestamps
    end
  end
end
