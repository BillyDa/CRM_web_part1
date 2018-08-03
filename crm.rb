require 'sinatra'
require_relative 'contact_new'


get '/' do
  erb :index
end

get '/contacts' do
  @contacts = Contact.all     # all is a method that comes from active record base.
  erb :contacts
end

get '/about' do
  erb :about
end







after do
  ActiveRecord::Base.connection.close
end
