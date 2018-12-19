class Checkbox < Baseclass

  def initialize
    super 
    @checkbox = "http://the-internet.herokuapp.com/checkboxes"
  end

  def goto()
    setup(@checkbox)
  end

  def discern_last_status
    checkboxes = @driver.find_elements(css: 'input[type="checkbox"]')

    # using attribute
    # puts "With .attribute('checked')"
    # checkboxes.each { |checkbox| puts checkbox.attribute('checked').inspect }
    return checkboxes.last.attribute('checked').inspect
    
    # using selected
    # puts "\nWith .selected?"
    #  checkboxes.each { |checkbox| puts checkbox.selected?.inspect }
    # return checkboxes.last.selected?.inspect
  end

  def uncheck_all_boxes
    checkboxes = @driver.find_elements(css: 'input[type="checkbox"]')
    checkboxes.each { |checkbox| checkbox.click if checkbox.selected?.inspect == true }
  end

  def confirm_checkboxes_unchecked
    checkboxes = @driver.find_elements(css: 'input[type="checkbox"]')
    checkboxes.each { |x| return "checked" if x.selected?.inspect == true }
    return "unchecked"
  end
end