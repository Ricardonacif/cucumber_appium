Dado(/^que estou na página inicial do facebook \(www\.facebook\.com\)$/) do
  @facebook_home = FacebookHome.new(@browser)
  @facebook_home.goto
end

Dado(/^que eu estou logado$/) do
  @facebook_home.log_in_on_facebook(ENV['FACEBOOK_USER'], ENV['FACEBOOK_PASSWORD'])
end

Quando(/^eu percorrer meu feed de notícias$/) do
  @facebook_feed = FacebookFeed.new(@browser)
  @facebook_feed.recommendation_div_element.touch_action(:swipe, distance: -100)
  require 'pry'; binding.pry
end

Então(/^eu devo ver um painel com as indicações de amizade$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Então(/^eu devo poder deslizar para ver mais indicações$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
