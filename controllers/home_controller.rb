class HomeController < ApplicationController
  get '/' do
    title "The slob system"
    erb :home
  end
end
