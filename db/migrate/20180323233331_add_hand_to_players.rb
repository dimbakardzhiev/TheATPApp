class AddHandToPlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :hand, :string
  end
end
