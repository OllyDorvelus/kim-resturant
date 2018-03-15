class DropFoodTypes < ActiveRecord::Migration
  def change
    drop_table :food_types
  end
end
