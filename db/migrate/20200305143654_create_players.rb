class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :player_name
      t.integer :age
      t.integer :champions_won
      t.integer :player_ballon_number
      t.integer  :goals
  end
  end
end
