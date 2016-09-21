require 'httparty'

class Recommendation
  def self.basic_info
    url = "https://api.themoviedb.org/3/movie/76341?api_key=43f00d373c532ca6548ad04652be7889"
    response = HTTParty.get(url)
  end
end
