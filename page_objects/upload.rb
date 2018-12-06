class Upload < Baseclass

	def initialize
		super 
		@driver = @driver
		@dropdown = "http://the-internet.herokuapp.com/upload"
	end

	def goto()
		setup(@dropdown)
	end

	def upload_file(file, filename)
		@driver.find_element(id: 'file-upload').send_keys file
		@driver.find_element(id: 'file-submit').click
		@driver.find_element(id: 'uploaded-files').text
	end
end