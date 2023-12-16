Feature: Test Delete request

  Background:
    Given url 'https://petstore.swagger.io/v2'
    And print "----- Start Delete Request -----"
    * def usrname = 'qa_user1'


  Scenario: Delete existing user
    When path '/user/'+usrname
    And method delete
    Then status 404
    And print response