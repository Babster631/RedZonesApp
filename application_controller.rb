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
    @disaster = "Ghorka Earthquake"
    @location = "Nepal"
    @date = "April 25"
    @time = "11:56 AM"
    @magnitude = "7.8"
    @mercalliIntensity = "IX (Violent)"
    erb :info
  end
  
  get '/charities' do
    erb :charities
  end

end