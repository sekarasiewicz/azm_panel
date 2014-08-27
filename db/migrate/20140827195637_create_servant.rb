class CreateServant < ActiveRecord::Migration
  def change
    create_table :servants do |t|
      t.string :nick
      t.string :name
      t.string :rank
      t.date :in_from
      t.integer :year_of_birth
      t.integer :gg
      t.boolean :status
      t.string :battle_tag

      t.timestamps
    end
  end
end
