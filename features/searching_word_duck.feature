Feature: Searching word duck

  As an user
  I want to search duck in google search
  So I can see the search results correctly

  Background:
    Given The browser is successfully opened


  Scenario: Searching word duck
    When I search for "duck"
    Then I should see correct Results for "duck"





