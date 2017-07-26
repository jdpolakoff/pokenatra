require 'active_record'
require 'ffaker'
require 'pg'
require_relative 'connection'
require_relative '../models/pokemon'
require_relative '../models/trainer'

Pokemon.destroy_all
Trainer.destroy_all


Pokemon.create(name: "Charmander", cp: rand(800), poke_type: "fire", img_url: "https://img.pokemondb.net/artwork/charmander.jpg", trainer_id: 3)
Pokemon.create(name: "Squirtle", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/squirtle.jpg", trainer_id: 2)
Pokemon.create(name: "Pikachu", cp: rand(800), poke_type: "lightning", img_url: "https://img.pokemondb.net/artwork/pikachu.jpg", trainer_id: 1)
Pokemon.create(name: "Bulbasaur", cp: rand(800), poke_type: "grass", img_url: "https://img.pokemondb.net/artwork/bulbasaur.jpg", trainer_id: 2)
Pokemon.create(name: "Clefairy", cp: rand(800), poke_type: "fairy", img_url: "https://img.pokemondb.net/artwork/clefairy.jpg", trainer_id: 3)
Pokemon.create(name: "Nidoking", cp: rand(800), poke_type: "poison ground", img_url: "https://img.pokemondb.net/artwork/nidoking.jpg", trainer_id: 1)
Pokemon.create(name: "Gengar", cp: rand(800), poke_type: "ghost poison", img_url: "https://img.pokemondb.net/artwork/gengar.jpg", trainer_id: 2)
Pokemon.create(name: "Blastoise", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/blastoise.jpg", trainer_id: 3)

Trainer.create(name: "Beauty", gender: "female", img_url: "https://cdn.bulbagarden.net/upload/1/18/ORAS_Beauty.png")
Trainer.create(name: "Biker", gender: "male", img_url: "https://cdn.bulbagarden.net/upload/a/a6/Chopper.png")
Trainer.create(name: "Bird Keeper", gender: "male", img_url: "https://cdn.bulbagarden.net/upload/d/df/ORAS_Bird_Keeper.png")
