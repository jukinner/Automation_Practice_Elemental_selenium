class Checkbox < Baseclass

  def initialize
    super 
    @checkbox = "http://the-internet.herokuapp.com/checkboxes"
  end

  def goto()
    setup(@checkbox)
  end

  def discern_last_status_with_attribute
    checkboxes = @driver.find_elements(css: 'input[type="checkbox"]')
    return checkboxes.last.attribute('checked').inspect
  end

  def discern_last_status_with_selected
    checkboxes = @driver.find_elements(css: 'input[type="checkbox"]')
    return checkboxes.last.selected?.inspect
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

  def check_first_checkbox
    checkboxes = @driver.find_elements(css: 'input[type="checkbox"]')
    checkboxes.first.click
    return checkboxes.last.selected?.inspect
  end
end