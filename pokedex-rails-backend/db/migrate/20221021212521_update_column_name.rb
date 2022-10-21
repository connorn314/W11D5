class UpdateColumnName < ActiveRecord::Migration[7.0]
  def change
    remove_column :items, :pokemons_id
    add_column :items, :pokemon_id, :bigint, null: false
    add_foreign_key :items, :pokemons, column: :pokemon_id, primary_key: :id
  end
end
