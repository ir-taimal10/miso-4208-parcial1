Feature: Login scenario

  Scenario Outline:  Multiple authentication in accounts
    Given I write the url of portal <accountsUrl> in  the browser
    When I click in login button and i write my credentials login: <userName>  and password: <userPassword>
    Then I should view the redirection page <redirectPortalTitle>

    Examples:
      | accountsUrl              | userName                        | userPassword     | redirectPortalTitle         |
      | 'https://todoist.com/'   | 'captuayonovoafredy@gmail.com'  |'1234567890'      | 'CloudOperationsPortal'     |