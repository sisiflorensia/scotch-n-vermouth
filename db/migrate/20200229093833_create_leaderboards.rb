class CreateLeaderboards < ActiveRecord::Migration[5.2]
  def change
    create_table :leaderboards do |t|
      t.string :your_name
      t.integer :score
      t.references :game, foreign_key: true

      t.timestamps
    end
  end
end
