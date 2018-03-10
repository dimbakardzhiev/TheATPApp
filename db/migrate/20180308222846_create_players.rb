class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :nationality

      t.timestamps
    end
  end
end
