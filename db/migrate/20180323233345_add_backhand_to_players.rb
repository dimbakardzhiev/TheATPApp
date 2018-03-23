class AddBackhandToPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :backhand, :string
  end
end
