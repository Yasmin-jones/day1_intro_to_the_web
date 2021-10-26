require 'sinatra'
require "sinatra/reloader"



get '/' do 
    "Hello World"
end 

get '/secret' do 
    "I hate ruby"
end 

get '/hello/message' do 
    "I love ruby"
end 

# erb(:index) 

# get '/cat' do 
#     "<div style ='border: 3px dashed red;'>
#     <img src= 'http://placekitten.com/500/500' >
#     </div>"
# end 

get '/random-cat' do
    @name = ["Amigo", "Misty", "Almond"].sample 
    erb :index
end

# get '/named-cat' do
#     p params
#     @name = params[:name]
#     erb :index
# end

get '/cat-form' do
    erb :cat_form
end

post '/named-cat' do
    p params
    @name = params[:name] 
    erb :index
  end