class RemoveGgAndAddCityToServants < ActiveRecord::Migration
  def change
    remove_column :servants, :gg
    add_column :servants, :city, :string
  end
end
