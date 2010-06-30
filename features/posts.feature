Feature: Post Management & Display
  In order to provide quality content
  As an author
  I need to be able to manage posts
  
  Scenario: Show Post
    Given I have a post
    And my post has title "My Post"
    And my post has body "This is my post. Back off!!!"
    And my post has author with name "Charles Max Wood"
    And my post was published on "May 22, 2010"
    When I display the post
    Then I should see "My Post"
    And I should see "This is my post. Back off!!!"
    And I should see "Charles Max Wood"
    And I should see "May 22, 2010"
    
  Scenario: Create Post
    Given I have a user named "Charles Max Wood"
    When I go to the post creation page
    And I fill in "post[title]" with "My Post Title"
    And I fill in "post[body]" with "This is my post. Back off!!! Something here"
    And I select "Charles Max Wood" from "post[author_id]"
    And I fill in "post[published_on]" with "May 23, 2010"
    And I press "Save Post"
    Then I should see "My Post Title"
    And I should see "This is my post. Back off!!! Something here"
    And I should see "Charles Max Wood"
    And I should see "May 23, 2010"