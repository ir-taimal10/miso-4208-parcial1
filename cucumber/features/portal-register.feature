Feature: Register scenario

  Scenario: Basic register error, email is already exists
    Given I go to the url of register 'https://todoist.com/Users/showRegister'
    When I write my register data, userName: 'carlos', email: 'carlos@gmail.com' and  password: 'admin123'
    When I accept terms of service
    When I click in submit button
    Then I should view the result page with content: 'Email is already found in our database'

  Scenario: Basic register error, pending to accept terms
    Given I go to the url of register 'https://todoist.com/Users/showRegister'
    When I write my register data, userName: 'felipe', email: 'felipe@gmail.com' and  password: 'admin123'
    When I click in submit button
    Then I should view the result page with content: 'Acepta los Términos de servicio y la Política de privacidad.'

 Scenario Outline:  Multiple attempt to register
   Given I go to the url of register <registerUrl>
   When I write my register data, userName: <userName>, email: <email> and  password: <password>
   When I accept terms of service
   When I click in submit button
   Then I should view the result page with content: <resultContent>

   Examples:
     | registerUrl                              | userName             | email                             | password      | resultContent                                   |
     | 'https://todoist.com/Users/showRegister' | 'captuayonovoafredy' | 'captuayonovoafredy@gmail.com'    | '1234567890'  | 'Email is already found in our database'        |
     | 'https://todoist.com/Users/showRegister' | 'ivan'               | 'ivan.taimal@gmail.com'           | 'admin123'    | 'Email is already found in our database'        |
     | 'https://todoist.com/Users/showRegister' | ''                   | 'ivan.taimal@gmail.com'           | 'admin123'    | 'El nombre no puede estar vacío'                |
     | 'https://todoist.com/Users/showRegister' | 'ivan'               | ''                                | 'admin123'    | 'Email no es válido'                            |
     | 'https://todoist.com/Users/showRegister' | 'ivan'               | 'ivan.taimal@gmail.com'           | ''            | 'La contraseña debe tener al menos 8 caracteres'|