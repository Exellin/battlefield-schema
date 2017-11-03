class CreateLineups < ActiveRecord::Migration[5.1]
  def change
    create_table :lineups do |t|
      t.timestamps
      t.belongs_to :match, foreign_key: true, null: false
    end

    create_table :lineup_users do |t|
      t.belongs_to :lineup, foreign_key: true, null: false
      t.belongs_to :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end
