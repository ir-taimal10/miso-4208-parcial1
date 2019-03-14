Feature: Login scenario

  Scenario Outline:  Multiple authentication in accounts
    Given I write the url of portal <accountsUrl> in  the browser
    When I write my credentials, login : <userName>  and password: <userPassword> and click in login button
    Then I should view the redirection page with content: <resultContent>

    Examples:
      | accountsUrl                                    | userName                        | userPassword        | resultContent               |
      | 'https://todoist.com/Users/showLogin?mini=1'   | 'captuayonovoafredy@gmail.com'  |'1234567890'         | 'Todoist'                   |
      | 'https://todoist.com/Users/showLogin?mini=1'   | 'captuayonovoafredy@gmail.com'  |'wrongPassword'      | 'Email o contraseña incorrectos' |