require 'watir-webdriver'
require 'pry'
require 'page-object'
require 'cucumber'


Before do
  @browser = Watir::Browser.new :chrome
end

After do |scenario|
  @browser.quit if @browser
end