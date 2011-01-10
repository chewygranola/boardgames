class CreateGames < ActiveRecord::Migration
  def self.up
    create_table :games do |t|
      t.integer :game_type_id
      t.date :game_date

      t.timestamps
    end
  end

  def self.down
    drop_table :games
  end
end
