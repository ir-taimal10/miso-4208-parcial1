describe('Todoist login', function () {
    it('When i visit https://todoist.com/ and  write my credentials, showld show me the ', function () {
        cy.visit('https://todoist.com/Users/showLogin?mini=1');
        cy.get('.input_email').type("captuayonovoafredy@gmail.com");
        cy.get('.input_password').type("1234567890");
        cy.get('.submit_btn').click();
        cy.contains('Bandeja de entrada');
    })
});