class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :discount, default: 100
      t.boolean :special, default: false
      t.timestamps
    end
  end
end
