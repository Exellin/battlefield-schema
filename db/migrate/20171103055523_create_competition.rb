class CreateCompetition < ActiveRecord::Migration[5.1]
  def change
    create_table :competitions do |t|
      t.integer :competition
      t.integer :competition_region
      t.string :competition_name
      t.integer :competition_type
      t.integer :roster_types
      t.integer :game_mode
      t.integer :number_of_teams
      t.integer :registration
      t.integer :seed
      t.datetime :start_date
      t.datetime :end_date
      t.integer :score_reporting
      t.integer :roster_size_type
      t.integer :min_roster_size
      t.integer :max_roster_size
      t.timestamps
    end

    add_column :rosters, :competition_id, :integer
    add_index :rosters, :competition_id
  end
end
