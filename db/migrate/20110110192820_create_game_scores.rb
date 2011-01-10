class CreateGameScores < ActiveRecord::Migration
  def self.up
    create_table :game_scores do |t|
      t.integer :game_id
      t.integer :player_id
      t.integer :score

      t.timestamps
    end
  end

  def self.down
    drop_table :game_scores
  end
end
