class AddWeightToPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :weight, :string
  end
end
