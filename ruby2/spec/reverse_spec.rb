require File.dirname(__FILE__) + '/../scrape.rb'
require 'rack/test'

set :environment, :test

def app
	Sinatra::Application
end
describe 'Homepage load' do
  include Rack::Test::Methods
  it "should load the homepage" do
  	get '/'
  	last_response.should be_ok
  end
end

