require File.join(File.dirname(__FILE__), '..', 'spec_helper')

describe RMeetup::Fetcher::Open_Events, 'fetching some Events' do
  before do
    @fetcher = RMeetup::Fetcher::Events.new
    @fetcher.extend(RMeetup::FakeResponse::Open_Events)
  end
  
  it 'should return a collection of Events' do
    @fetcher.fetch.each do |result|
      result.should be_kind_of(RMeetup::Type::Open_Event)
    end
  end
end