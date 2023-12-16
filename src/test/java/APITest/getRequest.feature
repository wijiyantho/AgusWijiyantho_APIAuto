Feature: Test Get request

  Background:
    Given url 'https://petstore.swagger.io/v2'
    And print "----- Start Get Request -----"

  Scenario: Get Status of Web 'petstore.swagger'
    When path '/swagger.json'
    And method get
    Then status 200
    And print response

  Scenario: Get Login of User
    When path 'user/login'
    And param username = "qa_user1"
    And param password = "1234abc"
    And method get
    Then status 200
    And print response

  Scenario: Get Logout of User
    When path 'user/logout'
    And method get
    Then status 200
    And print response
