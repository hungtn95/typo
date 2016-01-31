Feature: Create Category
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully view categories
		When I go to the Categories page
		Then I should see "Categories"
		
	Scenario: Successfully add category
		When I go to the Categories page
		And I fill in the following:
			| category_name			| Test       	|
		    | category_keywords		| key 		 	|
		    | category_permalink	| general	 	|
    		| category_description	| description	|
    	When I press "Save"
    	Then I should see "Test"
    	And I should see "key"
    	And I should see "general"
    	And I should see "description"