require './models/recommendation'
require 'byebug'
require 'ostruct'

class HomeController < ApplicationController

  get '/' do
    title "The slob system"
    session["movie"] ||= false
    @movie = session["movie"]
    erb :home
  end

  get '/recommendation' do
    recommendation = Recommendation.new
    session["movie"] = recommendation.data
    redirect('/home')
  end


end
