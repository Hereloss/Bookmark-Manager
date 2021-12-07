require "sinatra/base"
require "sinatra/reloader"
require_relative './lib/bookmarks'

class Bookmarks < Sinatra::Base
  enable :sessions
  $bookmark_manager = Bookmark_manager.new

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    "Hi Bookmarks!"
  end

  get '/bookmarks' do
    erb :bookmarks
  end
end