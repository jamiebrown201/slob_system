require 'httparty'
require 'byebug'

class HomeController < ApplicationController
  get '/' do
    title "The slob system"
    url = "https://api.themoviedb.org/3/movie/76341?api_key=43f00d373c532ca6548ad04652be7889"
    response = HTTParty.get(url)
    @movie = response.parsed_response
    erb :home
  end
end
