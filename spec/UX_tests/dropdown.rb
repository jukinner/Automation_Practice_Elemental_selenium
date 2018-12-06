require_relative '../spec_helper.rb'

describe 'dropdown navigation' do
  before(:each) do
    @driver = Dropdown.new()
    @driver.goto
  end

  after(:each) do
    @driver.close_browser
  end

  it 'can access and grab a dropdown item using the each method' do
  	dropdown_page = @driver
    selected_option = dropdown_page.select_dropdown_item_with_each('Option 1')
    expect(selected_option).to eq("Option 1")
	end

  it 'can access and grab a dropdown item using the Selenium.new feature' do 
    dropdown_page = @driver
    selected_option = dropdown_page.select_dropdown_item_Selenium_new('Option 2')
    expect(selected_option).to eq("Option 2")

  end

end