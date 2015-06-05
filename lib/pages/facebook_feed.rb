class FacebookFeed

  include PageObject
  div(:recommendation_div, :class => 'scrollAreaBody')
  
  page_url 'http://www.facebook.com'


end