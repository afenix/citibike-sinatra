require 'json'
require 'multi_json'
require 'bundler/setup'
require 'pry'
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }


before do
  json = File.open("data/citibikenyc.json").read
  @data = JSON.parse(json)
end

get '/' do
  erb :home
end

get '/form' do
  erb :form
end

post '/map' do
  @starting = params.fetch("starting")
  @ending = params.fetch("ending")
  erb :map
end

get '/map' do
  erb :map
end

post '/map' do
  erb :map
end
