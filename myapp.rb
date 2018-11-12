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
  "<img src='http://f.cl.ly/items/0k0v3e2X3l2f3i1n1Y19/Screen%20Shot%202013-09-10%20at%2011.32.00.png' style= 'border: dashed red;'>"

  # <@page_title = 'CAT'
  # @page_id = 'cat'
  # erb 'sinatra_test/cat.html'
end
