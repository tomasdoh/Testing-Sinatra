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

get '/cat' do
  @cat_random_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

# <@page_title = 'CAT'
# @page_id = 'cat'
# erb 'sinatra_test/cat.html'
