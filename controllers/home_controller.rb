require './models/recommendation'
require 'byebug'

class HomeController < ApplicationController
  $movie = Recommendation.new
  get '/' do
    title "The slob system"
    erb :home
  end

  get '/recommendation' do
    $movie.basic_info
    redirect('/home')
  end
end
