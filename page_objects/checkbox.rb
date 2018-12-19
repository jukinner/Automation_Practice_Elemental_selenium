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

  
end