require './models/recommendation'
require 'byebug'
require 'ostruct'

class HomeController < ApplicationController

  get '/' do
    title "The slob system"
    session["movie"] ||= OpenStruct.new(:id => "no movie yet")
    @movie = session["movie"]
    erb :home
  end

  get '/recommendation' do
    recommendation = Recommendation.new
    session["movie"] = recommendation
    redirect('/home')
  end


end
