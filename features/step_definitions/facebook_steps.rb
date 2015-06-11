Dado(/^que estou na página inicial do facebook \(www\.facebook\.com\)$/) do
  @facebook_home = FacebookHome.new(@browser)
  @facebook_home.goto
end

Dado(/^que eu estou logado$/) do
  @facebook_home.log_in_on_facebook(ENV['FACEBOOK_USER'], ENV['FACEBOOK_PASSWORD'])
end

Quando(/^eu percorrer meu feed de notícias$/) do
  @facebook_feed = FacebookFeed.new(@browser)
end

Então(/^eu devo ver um painel com as indicações de amizade$/) do
  expect(@facebook_feed.recommendation_div_element.when_present).to be_visible
end

Então(/^eu devo poder deslizar para ver mais indicações$/) do
  @facebook_feed.friend_recommendations_elements.each do |element|
    expect(element.when_present).to be_visible
    @facebook_feed.recommendation_div_element.touch_action(:swipe, distance: -100)
    sleep 1
  end
end