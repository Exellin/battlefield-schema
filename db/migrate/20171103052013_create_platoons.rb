class CreatePlatoons < ActiveRecord::Migration[5.1]
  def change
    create_table :platoons do |t|
      t.string :platoon_name
      t.belongs_to :nation, foreign_key: true, null: false
      t.timestamps
    end
  end
end
