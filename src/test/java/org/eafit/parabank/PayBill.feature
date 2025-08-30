@parabank_pay
Feature: Pay to Parabank

  Background:
    * url baseUrl
    * header Accept = 'application/json'
    * def accountfrom = 19227
    * der accountto = 98654    
    * def amount = 25
    * def name = 'Pruebas Karate'
    * def street = '89-90 43'
    * def city = 'Med'
    * def state = 'Ant'
    * def zipCode = '9580'
    * def phoneNumber = "3045449046"
    * def accountNumber = 59862
    

   Scenario: Customer Pay
         Given path 'billpay'
         And param accountId = accountId
         And param amount = amount         
         And request
    """
    {
      "name": "#(name)",
      "address": {
        "street": "#(street)",
        "city": "#(city)",
        "state": "#(state)",
        "zipCode": "#(zipCode)"
      },
      "phoneNumber": "#(phoneNumber)",
      "accountNumber": "#(accountNumber)",
    }
    """
    When method POST
    Then status 200


         
