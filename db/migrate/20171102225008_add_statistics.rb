class AddStatistics < ActiveRecord::Migration[5.1]
  def change
    create_table :statistics do |t|
      t.decimal :kda
      t.integer :ranking
      t.integer :games_played
      t.integer :leaves
      t.integer :wins
      t.integer :losses
      t.belongs_to :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end
