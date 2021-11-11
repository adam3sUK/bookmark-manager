require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'
require 'pg'

class BookmarkManager < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end


  get ('/') do
    'Hello World'
  end

  get ('/create') do
    erb :create
  end

  post ('/new_bookmark') do
    url = params['url']
    Bookmark.create(url: params[:url])
    redirect '/bookmarks'
  end

  get ('/bookmarks') do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  run! if app_file == $0
end