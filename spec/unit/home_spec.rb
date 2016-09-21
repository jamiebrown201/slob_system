require './controllers/home_controller'

describe HomeController do
  it 'returns a single movie' do
    expect(@movie["id"]).to eq "76341"
  end
end
