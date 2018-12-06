require_relative '../spec_helper.rb'

describe 'dropdown navigation' do
  before(:each) do
    @driver = Upload.new()
    @driver.goto
  end

  after(:each) do
    @driver.close_browser
  end

  it 'can upload csv file to the website' do
  	upload_page = @driver
  	filename = '12-4-18 QA CG testing JRK.csv'
  	file = File.join(Dir.pwd, filename)

  	uploaded_file = upload_page.upload_file(file, filename)
  	expect(uploaded_file).to eq(filename)

	end
end
