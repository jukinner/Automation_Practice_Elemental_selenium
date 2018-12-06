class Dropdown < Baseclass

	def initialize
		super 
		@driver = @driver
		@dropdown = "http://the-internet.herokuapp.com/dropdown"
	end

	def goto()
		setup(@dropdown)
	end

	def dropdown_box
		self.find_element(id: 'dropdown')
	end

	def select_dropdown_item_with_each(item)
		dropdown_list = @driver.find_element(id: 'dropdown')
		options = dropdown_list.find_elements(tag_name: 'option')
		options.each do |option| 
			@selected_option = option.text if option.text == item
			option.click if option.text == item
		end
		return @selected_option
	end

	def select_dropdown_item_Selenium_new(item)
		dropdown_list = @driver.find_element(id: 'dropdown')
		select_list = Selenium::WebDriver::Support::Select.new(dropdown_list)
		select_list.select_by(:text, 'Option 2')

		return select_list.selected_options[0].text
	end	
end