class CreateRankings < ActiveRecord::Migration[5.1]
  def change
    create_table :rankings do |t|
      t.string :month
      t.integer :year
      t.integer :ranking
      t.integer :player_id
      t.integer :points

      t.timestamps
    end
  end
end
