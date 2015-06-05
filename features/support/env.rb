require 'watir-webdriver'
require 'pry'
require 'page-object'
require 'touch_action'
require 'cucumber'
require 'pages/facebook_home'
require 'pages/facebook_feed'

Before do
  caps = {
    :deviceName => 'iPhone Simulator',
    :browserName => 'Safari',
    :platformVersion => '8.3',
    :platformName => 'iOS'
  }
  @browser = Watir::Browser.new(  
    :remote,  
    :url => "http://127.0.0.1:4723/wd/hub",  
    :desired_capabilities => caps)
end

After do |scenario|
  @browser.quit if @browser
end