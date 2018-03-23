class AddTurnedProToPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :turned_pro, :integer
  end
end
