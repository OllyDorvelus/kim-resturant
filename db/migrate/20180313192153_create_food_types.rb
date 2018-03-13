class CreateFoodTypes < ActiveRecord::Migration
  def change
    create_table :food_types do |t|
      t.integer :user_id
      t.integer :food_id
      t.timestamps
    end
  end
end
