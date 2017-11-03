class CreateNations < ActiveRecord::Migration[5.1]
  def change
    create_table :nations do |t|
      t.string :nation_name
      t.string :abbreviation
      t.attachment :small_flag
      t.attachment :large_flag
      t.string :emblem_url
      t.timestamps
    end
  end
end
