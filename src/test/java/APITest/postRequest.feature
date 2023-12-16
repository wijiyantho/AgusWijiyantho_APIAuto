Feature: Test Post request

  Background:
    Given url 'https://petstore.swagger.io/v2'
    And print "----- Start Post Request -----"
    * def body = {"id": 100, "username": "qa_user1"}
    * def headerPets = { Accept: 'application/json'}

  Scenario:
    When path '/user'
    And method post
    And headers headerPets
    And request body
    Then status 200
    And print response