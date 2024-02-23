@ChallengeQA
Feature: Challenge QA Karate Antonio Aguilar

  Background:
    * def urlBase = "https://petstore.swagger.io/v2/user/"
    * def json = read("../data/userInfo.json")

    @Create
    Scenario: Create User
      Given url urlBase
      And request json
      When method POST
      Then status 200
      And print json.username

    @Get
    Scenario: Get User
      Given url urlBase + json.username
      When method GET
      Then status 200
      And match $.id == "#number"
      And match $.userStatus == "#number"
      And match $.username == json.username

    @Update
    Scenario Outline: Updated firstname and email
      * def body = { "username": "#(username)", "firstName": "#(firstName)", "lastName": "#(lastName)",  "email": "#(email)", "password": "#(password)", "phone": "#(phone)"  }
      Given url urlBase + json.username
      And request body
      When method PUT
      Then status 200

      Examples:
        | username    | firstName | lastName | email                 | password    | phone      |
        | ChallengeQA | Wilmer    | Aguilar  | challengeqa@gmail.com | ChallengeQA | 0123456789 |

    @GetUpdated
    Scenario: Get updated user
      Given url urlBase + json.username
      When method GET
      Then status 200
      And match $.id == "#notnull"
      And match $.userStatus == "#notnull"
      And match $.firstName == "#string"
      And match $.email == "#string"

    @Delete
    Scenario: Deleted user
      Given url urlBase + json.username
      When method DELETE
      Then status 200