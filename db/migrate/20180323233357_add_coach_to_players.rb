class AddCoachToPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :coach, :string
  end
end
