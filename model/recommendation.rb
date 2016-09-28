require 'httparty'

class Recommendation
  GENRES = {action: 28, adventure: 12, comedy: 35, scifi: 878}
  attr_reader :data, :genre

  def initialize(genre)
    @data = basic_info
    @genre = genre
  end

  private

  def basic_info
    byebug
    url = "https://api.themoviedb.org/3/discover/movie?api_key=43f00d373c532ca6548ad04652be7889&language=en-US&with_genres=#{GENRES[genre]}"
    HTTParty.get(url).parsed_response["results"][Random.rand(14)]
  end
end
