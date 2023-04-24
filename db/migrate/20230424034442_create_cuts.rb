class CreateCuts < ActiveRecord::Migration[5.2]
  def change
    create_table :cuts do |t|
      t.text :name
      t.text :location
      t.text :alternative_name
      t.text :characteristics
      t.integer :dish_id
      t.text :image

      t.timestamps
    end
  end
end
