class AddForeignKeyToRankings < ActiveRecord::Migration[5.1]
  def change
  	add_foreign_key :rankings, :players
  end
end
