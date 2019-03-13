describe('Todoist login', function () {
    it('Visits https://todoist.com/ and  login', function () {
        cy.visit('https://todoist.com/');


        cy.get('.td-header__actions-holder')
            .find('.sel_login')
            .click();


        cy.get('.GB_frame')
            .then(($iframe) => {

                const iframe = $iframe.contents();
                const userInput = iframe.find(".input_email");
                const passwordInput = iframe.find(".input_password");
                cy.wrap(userInput).type("captuayonovoafredy@gmail.com");
                cy.wrap(passwordInput).type("1234567890");

                /*const doc = $iframe.contents();
                cy.wrap(doc.find('.input_email')).type('captuayonovoafredy@gmail.com');
                cy.wrap(doc.find('.input_password')).type('1234567890');*/
            });


        /*
        cy.get('.cajaSignUp').find('input[name="correo"]').click().type("wrongemail@example.com");
        cy.get('.cajaSignUp').find('select[name="idUniversidad"]').select('universidad-de-los-andes');
        cy.get('.cajaSignUp').contains('Estudio una maestria').click();
        cy.get('.cajaSignUp').find('select[name="idPrograma"]').select("54");
        cy.get('.cajaSignUp').find('input[name="password"]').click().type("admin123");
        cy.get('.cajaSignUp').find('input[name="acepta"]').click();*/

        //cy.get('.cajaSignUp').contains('Registrarse').click();
        /*cy.contains('Error: Ya existe un usuario registrado con el correo \'wrongemail@example.com\'');*/
    })
});