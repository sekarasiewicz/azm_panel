class AddAvatarToServants < ActiveRecord::Migration
  def change
    add_column :servants, :avatar, :string
  end
end
