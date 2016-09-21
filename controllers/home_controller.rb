require './models/recommendation'

class HomeController < ApplicationController
  get '/' do
    title "The slob system"
    @movie = Recommendation.basic_info.parsed_response
    erb :home
  end
end
