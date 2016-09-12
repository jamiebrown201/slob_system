require "sinatra/base"
require './sinatra/helpers/test_helper'
class Slob < Sinatra::Base

  set :title, "The Slob System"

  get '/' do
    "Hello from #{random_number}!"
  end

  # $0 is the executed file
  # __FILE__ is the current file
  run! if __FILE__ == $0
end
