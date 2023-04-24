class CreateCutsDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :cuts_dishes, :id => false do |t|
      t.integer :cut_id
      t.integer :dish_id
    end
  end
end
