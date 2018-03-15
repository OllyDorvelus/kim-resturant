class AddPictureToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :picture, :string
  end
end
