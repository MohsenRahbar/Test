describe('Login Test', () => {  
    it('should log in with valid credentials', () => {  
        cy.visit('http://127.0.0.1:5500/second%20task/AutomationFront/AutomationFront/login/login.html'); 

        cy.get('#login-email').type('test@test.com'); 
        cy.get('#login-password').type('123'); 
        cy.get("button:contains('Log In')").click(); 

        cy.wait(3000)
    })  
})