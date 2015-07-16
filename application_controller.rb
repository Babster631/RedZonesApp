require 'bundler'
Bundler.require

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/map' do
    @disasterType = params[:disasterType]
    if params[:earthquake]==true
      @showEarthquakePin = true
    elsif params[:tsunami]==true
      @showTsunamiPin = true
    end
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