require 'sinatra'
require "sinatra/reloader" if development?



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

get '/cat' do
    @name = ["Amigo", "Misty", "Almond"].sample 
    erb :index
    
   
end