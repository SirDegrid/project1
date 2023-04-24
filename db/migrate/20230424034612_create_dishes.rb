class CreateDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :dishes do |t|
      t.text :name
      t.text :cuisine
      t.integer :cut_id
      t.integer :wine_id
      t.text :image_URL
      t.text :recipe_URL

      t.timestamps
    end
  end
end
