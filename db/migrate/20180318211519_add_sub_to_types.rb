class AddSubToTypes < ActiveRecord::Migration
  def change
    add_column :types, :sub, :boolean, default: false
  end
end
