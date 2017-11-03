class CreateNationModerators < ActiveRecord::Migration[5.1]
  def change
    create_table :nation_moderators do |t|
      t.belongs_to :user, foreign_key: true, null: false
      t.belongs_to :nation, foreign_key: true, null: false
      t.timestamps
    end
  end
end
