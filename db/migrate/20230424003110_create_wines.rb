class CreateWines < ActiveRecord::Migration[5.2]
  def change
    create_table :wines do |t|
      t.text :name
      t.text :region
      t.text :varietal
      t.integer :dish_id
      t.text :image_URL

      t.timestamps
    end
  end
end
