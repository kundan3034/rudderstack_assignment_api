Feature: API login

    As a user, I should be able to login to the app via api

    Scenario: Successful login via api
        Given I make a "POST" request to /login
        # And I set body to
        #     """
        #     {email: "kundan@hackerearth.com", password: "Test@123456789"}
        #     """
        When I receive a response
        Then I expect response should have a status 200
        And I expect response should have a json like
            """
            {
                "status": "success",
                "email": "kundan@hackerearth.com"
            }
            """
# Then I expect response should have a statusCode "200" and status as "success"





