class Api::PokemonController < ApplicationController

    TYPES = [
        'fire',
        'electric',
        'normal',
        'ghost',
        'psychic',
        'water',
        'bug',
        'dragon',
        'grass',
        'fighting',
        'ice',
        'flying',
        'poison',
        'ground',
        'rock',
        'steel'
    ].sort.freeze

    def types 
        render json: TYPES.to_json
    end

    def index
        @pokemons = Pokemon.all
        render :index
    end

    def show 
        @pokemon = Pokemon.find_by(id: params[:id])
        render :show
    end
    
    
end
