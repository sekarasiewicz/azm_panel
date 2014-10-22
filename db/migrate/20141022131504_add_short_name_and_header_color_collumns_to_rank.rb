class AddShortNameAndHeaderColorCollumnsToRank < ActiveRecord::Migration
  def change
    add_column :rank, :short_name, :string
    add_column :rank, :header_color, :string
  end
end
