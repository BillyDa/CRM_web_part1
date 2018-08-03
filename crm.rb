require 'sinatra'
require_relative 'contact_new'


get '/' do
  erb :index
end
