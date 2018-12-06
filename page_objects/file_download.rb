class FileDownload < Baseclass

	def initialize
		super 
		@file_download = "http://the-internet.herokuapp.com/download/"
	end

	def goto()
		setup(@file_download)
	end
	
end