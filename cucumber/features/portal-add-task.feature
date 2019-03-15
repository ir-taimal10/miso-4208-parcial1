Feature: Register scenario

  Scenario: Add task
    Given I am authenticated on the site 'https://todoist.com/Users/showLogin?mini=1' with my credentials,  login : 'captuayonovoafredy@gmail.com'  and password: '1234567890'
    When I click in add task button
    When I write a description of a new task: 'Task-test-2'
    When I submit task creation
    Then I should view 'Task-test-2' task in list


  Scenario: Attempt to Add task
    Given I am authenticated on the site 'https://todoist.com/Users/showLogin?mini=1' with my credentials,  login : 'captuayonovoafredy@gmail.com'  and password: '1234567890'
    When I click in add task button
    When I write a description of a new task: 'Task-test-1'
    When I cancel task creation
    Then I should view 'Task-test-1' task in list



