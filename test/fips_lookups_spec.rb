require_relative 'helper'

describe 'Mapping (State, County) between (NISTCodes Code)' do
  it 'looks up a fips for a state and county' do

    NistCodes::FIPS['CA']['Los Angeles'].should == 6037
    NistCodes::FIPS['CA']['Los Angeles County'].should == 6037

  end

  it 'looks up a state and county' do
    NistCodes::STATE_COUNTY[6037].should == ['CA', 'Los Angeles County']
  end
end