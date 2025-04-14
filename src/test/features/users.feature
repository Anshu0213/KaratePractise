Feature: GoREST API Test

  Scenario: Get users
    Given url 'https://gorest.co.in/public/v1/users'
    When method get
    Then status 200
    * print response

    Scenario: Users detail not found
      Given url 'https://gorest.co.in/public/v1/users'
      And path 30
      When method get
      Then status 404


  Scenario: Users detail for specific id
    Given url 'https://gorest.co.in/public/v1/users'
    And path 7825344
    When method get
    Then status 200
    * print response
    * def actName = response.data.name
    * print actName
    * match actName == 'Dhanu Ganaka'