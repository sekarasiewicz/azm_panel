class Rank < ActiveRecord::Migration
  def change
    create_table(:rank) do |t|
      t.string :name
      t.integer :level

      t.timestamps
    end
  end
end
