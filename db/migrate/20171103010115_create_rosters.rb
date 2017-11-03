class CreateRosters < ActiveRecord::Migration[5.1]
  def change
    create_table :rosters do |t|
      t.string :roster_name
      t.integer :game_mode
      t.integer :owner_id, null: false
      t.string :owner_type, null: false
      t.index [:owner_id, :owner_type]
    end
  end
end
