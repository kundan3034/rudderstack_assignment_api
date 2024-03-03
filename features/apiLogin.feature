Feature: API login

    As a user, I should be able to login to the app via api

    Scenario: Successful login via api
        Given I make a "POST" request to "/login" with the following headers and body
            """
            {
                "headers": {
                    "content-type": "application/json",
                    "Accept": "application/json, text/plain, */*",
                    "Accept-Encoding": "gzip, deflate, br, zstd",
                    "Referer": "https://app.rudderstack.com/",
                    "Origin": "https://app.rudderstack.com"
                },
                "body": {
                    "email": "kundan@hackerearth.com",
                    "password": "Test@123456789"
                }
            }
            """
        When I receive a response
        Then I expect response should have a status 200
        And I expect response should have a json like
            """
            {
                "status": "success",
                "email": "kundan@hackerearth.com"
            }
            """
