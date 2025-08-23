@parabank_login
Feature: Login to Parabank

  Background:
    * url baseUrl
    * header Accept = 'application/json'

  Scenario: Customer Login
    Given path 'login'
    And path 'Emigrwoo' //Username
    And path 'Chocorramo1*' //Password
    When method GET
    Then status 200
    And match response ==
    """
    {
       "id": '#number',
       "firstName": '#string',
       "lastName": '#string',
       "address": {
            "street": '#string',
            "city": '#string',
            "state": '#string',
            "zipCode": '#string'
        },
       "phoneNumber": '#string',
       "ssn": '#string'
    }
    """
    And match responseHeaders['CF-RAY'][0] != null

 Scenario: Customer Login Failed
    Given path 'login'
    And path 'Emigrwoo' //Username
    And path 'Chocorramo100*' //Password
    When method GET
    Then status 400
    And match response contains 'Invalid username and/or password'
