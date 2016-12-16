class Droprecipeingredients < ActiveRecord::Migration[5.0]
  def change
    drop_table :recipes_ingredients
  end
end
