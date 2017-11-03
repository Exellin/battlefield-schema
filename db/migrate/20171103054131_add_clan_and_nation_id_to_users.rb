class AddClanAndNationIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :clan_id, :integer
    add_index :users, :clan_id
    add_column :users, :nation_id, :integer
    add_index :users, :nation_id
  end
end
