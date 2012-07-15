require File.dirname(__FILE__) + '/reverse.rb'

describe 'Reverse Service' do
  it "should moo" do
    reverse('Paul').should == 'luaP'
  end
end

