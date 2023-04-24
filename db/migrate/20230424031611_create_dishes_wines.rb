class CreateDishesWines < ActiveRecord::Migration[5.2]
  def change
    create_table :dishes_wines do |t|
      t.integer :dish_id
      t.integer :wine_id
    end
  end
end
