require 'bundler'
Bundler.require

class ApplicationController < Sinatra::Base

#-------------------------------------------------------#
  get '/' do
    erb :index
  end
#-------------------------------------------------------#
  post '/map' do
    @disasterType = params[:disasterType]
    if params[:earthquake]=="true"
      @showEarthquakePin=true
    elsif params[:tsunami]=="true"
      @showTsunamiPin=true
    end
    erb :map
  end
#-------------------------------------------------------#

  get '/infoEq_4-25-15' do
    erb :infoEq_4-25-15
  end
  
  get '/infoTs_3-11-11' do
    erb :infoTs_3-11-11
  end
end