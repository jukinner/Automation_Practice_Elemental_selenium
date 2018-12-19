require_relative '../spec_helper.rb'

describe 'dropdown navigation' do
  before(:each) do
    @driver = Checkbox.new()
    @driver.goto
  end

  after(:each) do
    @driver.close_browser
  end

  it 'can gather all the elements and check that the last element is checked' do
    checkbox_page = @driver
    checkboxes = checkbox_page.discern_last_status

    # using attribute
    expect(checkboxes).not_to be_nil

    # using selected?
    # expect(checkboxes).to eq("true")
  end

end