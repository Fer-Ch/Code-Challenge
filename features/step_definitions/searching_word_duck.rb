Given /^The browser is successfully opened$/ do
 @browser.goto 'https://www.google.com/?gl=us'
 @home = HomePage.new(@browser)
 @search = SearchPage.new(@browser)
end

When(/^I search for "([^"]*)"$/) do |word|
  on(HomePage).searchInput = word
  @home.clickSearchButton
end

Then(/^I should see correct Results for "([^"]*)"$/) do |word|
  expect(@browser.text).to include word
  expect(@search.searchSummary).to include('result')
  expect(@search.searchResult).to include('Duck')
  expect(@browser.url).to include word
end