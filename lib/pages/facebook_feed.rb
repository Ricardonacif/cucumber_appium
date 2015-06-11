class FacebookFeed

  include PageObject
  div(:recommendation_div, :id => 'u_0_t')
  divs(:friend_recommendations, class: 'scrollAreaColumn')
  
  page_url 'http://www.facebook.com'


end