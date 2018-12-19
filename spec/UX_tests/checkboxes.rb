require_relative '../spec_helper.rb'

describe 'dropdown navigation' do
  before(:each) do
    @driver = Checkbox.new()
    @driver.goto
  end

  after(:each) do
    @driver.close_browser
  end

  it 'can gather all the elements and check that the last element is checked using attribute lookup' do
    checkbox_page = @driver
    checkboxes = checkbox_page.discern_last_status_with_attribute

    expect(checkboxes).not_to be_nil
  end

  it 'can gather all the elements and check that the last element is checked using .selected? lookup' do
    checkbox_page = @driver
    checkboxes = checkbox_page.discern_last_status_with_selected

    expect(checkboxes).to eq("true")
  end

  it 'can uncheck all the boxes' do 
    checkbox_page = @driver
    checkboxes = checkbox_page.uncheck_all_boxes
    expect(checkbox_page.confirm_checkboxes_unchecked).to eq("unchecked")
  end

  it 'can uncheck and check the first box' do 
    checkbox_page = @driver
    checkboxes = checkbox_page.uncheck_all_boxes
    expect(checkbox_page.check_first_checkbox).to eq("true")
  end

end