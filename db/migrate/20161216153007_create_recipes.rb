class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :prep_time
      t.integer :bake_time
      t.text :instructions
      t.text :details
      t.timestamps
    end
  end
end
