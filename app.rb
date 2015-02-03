require 'multi_json'
require 'bundler/setup'
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }


before do
  json = File.open("data/citibikenyc.json").read
  @data = MultiJson.load(json)
end

get '/' do
  erb :home
end
