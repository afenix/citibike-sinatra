require 'pry'
require 'json'
require 'multi_json'
require 'bundler/setup'

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
  @start = @params[:start]
  @end = @params[:end]
  erb :map
end

get '/map' do
  erb :map
end

post '/map' do
  erb :map
end
