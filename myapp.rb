require 'sinatra'
require 'shotgun'

set :session_secret, 'super secret'
set :public_folder, File.dirname(__FILE__) + '/public'

get '/' do
  'Hello world!'
end

get '/secret' do
  "Top secret, don't read me"
end

get '/more' do
  "more content"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/cat-form' do
  erb(:form)
end

# <@page_title = 'CAT'
# @page_id = 'cat'
# erb 'sinatra_test/cat.html'
