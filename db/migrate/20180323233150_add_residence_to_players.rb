class AddResidenceToPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :residence, :string
  end
end
