class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.integer :game_mode
      t.timestamps
    end

    add_column :rosters, :match_id, :integer
    add_index :rosters, :match_id
  end
end
