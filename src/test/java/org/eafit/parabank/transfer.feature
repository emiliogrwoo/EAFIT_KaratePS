@parabank_transfer
Feature: Transfer to Parabank

  Background:
    * url baseUrl
    * header Accept = 'application/json'
    * def accountfrom = 26775
    * der accountto = 34323    
    * def amount = 1000
    

   Scenario: Customer Transfer
      Given path 'transfer'
      And param fromAccountId = accountfrom
      And param toAccountId = accountto
      And param amount = amount
      When method POST
      Then status 200
      And match response contains 'Successfully transferred'
