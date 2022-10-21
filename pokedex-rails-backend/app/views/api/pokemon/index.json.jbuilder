# [
#   {
#     "id": 1,
#     "number": 1,
#     "name": "Bulbasaur",
#     "imageUrl": "/images/pokemon_snaps/1.svg",
#     "captured": true
#   },
#   // ...
# ]

json.array! @pokemons, :id, :number, :name, (:captured) ? :image_url : '/images/unknown.png' , :captured