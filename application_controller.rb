require 'bundler'
Bundler.require

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  
  get '/map' do
    erb :map
  end
  
  get '/info' do
    @disaster = "Peru Earthquake"
    erb :info
  end

end