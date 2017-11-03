class CreateRosterUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :roster_users do |t|
      t.belongs_to :user, foreign_key: true, null: false
      t.belongs_to :roster, foreign_key: true, null: false
      t.boolean :team_leader, default: false
    end
  end
end
