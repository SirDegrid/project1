class CreateWinesDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :wines_dishes, :id => false do |t|
      t.integer :wine_id
      t.integer :dish_id
    end
  end
end
