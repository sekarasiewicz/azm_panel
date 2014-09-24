class ChangeServantRankColumnFromStringToInt < ActiveRecord::Migration
  def change
    remove_column :servants, :rank
    add_column :servants, :rank_id, :integer

    add_index :servants, :rank_id
  end
end
