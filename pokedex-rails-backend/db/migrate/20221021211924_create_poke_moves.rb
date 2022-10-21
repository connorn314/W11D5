class CreatePokeMoves < ActiveRecord::Migration[7.0]
  def change
    create_table :poke_moves do |t|
      t.references :move
      t.references :pokemon
      t.timestamps
    end
    add_index :poke_moves, [:move_id, :pokemon_id], unique: true
  end
end
