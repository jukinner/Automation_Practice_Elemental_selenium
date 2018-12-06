require_relative '../spec_helper.rb'

describe 'Homepage navigation' do
  before(:each) do
    @driver = Homepage.new()
    @driver.goto
  end

  after(:each) do
    @driver.close_browser
  end

  it 'can navigate to the homepage and grab the title' do
  	title = @driver.get_title
    expect(title).to eq('The Internet')
	end

end