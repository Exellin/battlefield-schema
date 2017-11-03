class CreateClan < ActiveRecord::Migration[5.1]
  def change
    create_table :clans do |t|
      t.string :clan_name
      t.string :website
      t.string :abbreviation
      t.string :encrypted_password
      t.boolean :open_for_applications
      t.string :emblem_url
      t.string :description
      t.timestamps
    end
  end
end
