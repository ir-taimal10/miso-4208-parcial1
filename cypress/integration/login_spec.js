describe('Todoist login', function() {
    it('Visits los https://todoist.com/ and  login', function() {
        cy.visit('https://todoist.com/');


        cy.get('.td-header__actions-holder').find('.sel_login').click();

        /*
        cy.get('.cajaSignUp').find('input[name="correo"]').click().type("wrongemail@example.com");
        cy.get('.cajaSignUp').find('select[name="idUniversidad"]').select('universidad-de-los-andes');
        cy.get('.cajaSignUp').contains('Estudio una maestria').click();
        cy.get('.cajaSignUp').find('select[name="idPrograma"]').select("54");
        cy.get('.cajaSignUp').find('input[name="password"]').click().type("admin123");
        cy.get('.cajaSignUp').find('input[name="acepta"]').click();*/

        //cy.get('.cajaSignUp').contains('Registrarse').click();
        cy.contains('Error: Ya existe un usuario registrado con el correo \'wrongemail@example.com\'');
    })
});