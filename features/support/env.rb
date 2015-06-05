require 'watir-webdriver'
require 'pry'
require 'world_helper'
require 'page-object'
require 'browse_page'

@browser = browser
@wait = Selenium::WebDriver::Wait.new(:timeout => 10)

World(WorldHelper)

Before do
  @browser = Selenium::WebDriver.for :chrome
  @browser.manage.delete_all_cookies
end

After do |scenario|
  @browser.quit if @browser
end