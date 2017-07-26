require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

require_relative 'db/connection'

require_relative 'models/pokemon'
require_relative 'models/trainer'

get '/trainers' do
  @trainers = Trainer.all
  erb :"trainers/index"
end

get '/trainers/:id' do
  @trainer = Trainer.find(params[:id])
  @pokemons = @trainer.pokemons
  erb :"trainers/show"
end


get '/pokemon' do
  @pokemons = Pokemon.all
  erb :"pokemon/index"
end


get '/pokemon/new' do
  erb :"pokemon/new"
end

post '/pokemon' do
  @pokemon = Pokemon.create(params[:pokemon])
  redirect "/pokemon/#{@pokemon.id}"
end

get '/pokemon/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemon/show"
end

get '/pokemon/:id/edit' do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemon/edit"
end

put '/pokemon/:id' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.update(params[:pokemon])
  redirect("/pokemon/#{@pokemon.id}")
end

delete '/pokemon/:id' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.destroy
  redirect "/pokemon"
end
