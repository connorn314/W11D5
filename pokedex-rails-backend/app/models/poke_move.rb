# == Schema Information
#
# Table name: poke_moves
#
#  id         :bigint           not null, primary key
#  move_id    :bigint
#  pokemon_id :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class PokeMove < ApplicationRecord
end
