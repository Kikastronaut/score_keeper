class CreateGameScores < ActiveRecord::Migration[5.2]
  def change
    create_table :game_scores do |t|
      t.integer :military_score
      t.integer :money_score
      t.integer :wonder_score
      t.integer :blue_score
      t.integer :yellow_score
      t.integer :purple_score
      t.integer :green_score
      t.integer :total_score

      t.belongs_to :user, index: true
      t.belongs_to :game, index: true

      t.timestamps
    end
  end
end
