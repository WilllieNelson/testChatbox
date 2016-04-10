Feature: Add new post
  As a logged in users
  I want to add photo and caption
  So that I can have posts

  Scenario: Users have a new post page
    Given a logged in user
    When I click on new post
    Then I should see a new post page

  Scenario: Adding new post
    Given a logged in user
    When I go to new post page
    And I upload an image
    And I input a caption
    And I click on create post button
    Then I should be redirected to home page
    And I should see my post