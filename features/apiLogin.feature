Feature: API login

    As a user, I should be able to login to the app via api

    Scenario: Successful login via api
        Given I make a "POST" request to "/login" with the following headers
            """
            {
                "headers": {
                    "content-type": "application/json",
                    "Accept": "application/json, text/plain, */*",
                    "Accept-Encoding": "gzip, deflate, br, zstd",
                    "Referer": "https://app.rudderstack.com/",
                    "Origin": "https://app.rudderstack.com"
                }
            }
            """
        When I receive a response
        Then I expect response should have a status 200
        And I expect response should have a json like
            """
            {
                "status": "success",
                "email": "${EMAIL}"
            }
            """

# """
# More test cases that can be tested similarly:
# ### Positive Test Cases:
# 1. Valid Login: Use correct credentials (email and password) and verify that the API returns a success response (status code 200).
# 2. Case Insensitive Email: Test logging in with email addresses that differ only in case (e.g., "user@example.com" vs. "User@Example.com") and ensure they are treated as equal.
# 3. Leading and Trailing Whitespace: Test logging in with email and password that have leading and/or trailing whitespace characters.
# 4. Long Email and Password: Test logging in with very long email and password to ensure that the API can handle them.
# 5. Special Characters in Email and Password: Test logging in with email and password containing special characters like @, !, #, $, etc.

# ### Negative Test Cases:
# 1. Invalid Email: Test logging in with an invalid email format (e.g., "userexample.com") and ensure the API returns a proper error message.
# 2. Invalid Password: Test logging in with an incorrect password and ensure the API returns a proper error message.
# 3. Empty Email: Test logging in with an empty email field and ensure the API returns a proper error message.
# 4. Empty Password: Test logging in with an empty password field and ensure the API returns a proper error message.
# 5. Missing Email or Password: Test logging in without providing an email or password and ensure the API returns a proper error message.
# 6. SQL Injection: Attempt to log in with an email or password that contains SQL injection attempts (e.g., "email' OR 1=1--").
# 7. Cross-Site Scripting (XSS): Attempt to log in with an email or password that contains a script tag (e.g., "<script>alert('XSS')</script>").
# 8. Brute Force Attack: Attempt to log in multiple times with incorrect credentials and check if the API responds appropriately (e.g., locking the account after a certain number of failed attempts).
# 9. Expired Account: Attempt to log in with credentials of an account that has been expired or deactivated.
# 10. Account Lockout: Attempt to log in to a locked account and verify that the API returns a proper error message.

# ### Edge Test Cases:
# 1. Maximum Email Length: Test logging in with an email address that is at the maximum allowed length.
# 2. Maximum Password Length: Test logging in with a password that is at the maximum allowed length.
# 3. Non-ASCII Characters: Test logging in with email and password containing non-ASCII characters (e.g., Unicode characters).
# 4. Empty Email and Password: Test logging in with both email and password fields empty.
# 5. Maximum Number of Concurrent Logins: Test logging in with the maximum number of concurrent logins allowed for an account.
# """