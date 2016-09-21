require './controllers/home_controller'

describe Recommendation do
  it 'returns a single movie' do
    movie = described_class.basic_info
    expect(movie["id"]).to eq 76341
  end
end
