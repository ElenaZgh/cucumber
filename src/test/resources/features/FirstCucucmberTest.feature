
@firstTag
Feature: verify login functionality

  Scenario: user logs in with valid credentials
    Given  valid username "Aika"
    And valid password "ABC123!"
    When user clicks login button
    Then user logs in


  Scenario: user logs in with valid credentials
    Given  invalid username "Aikaaa"
    And invalid password "ABC12345!"
    When user clicks login button
    Then user does not log in
@firstOutline
    Scenario Outline:
      Given correct "<username>" username
      And correct "<password>" password
      When user is clicking login button
      Then verify user logs in
      Examples:
        | username     | password  |
        | Aika         | abc123    |
        | Harry Potter | xyz456    |
        | Barbie       | canHello1 |