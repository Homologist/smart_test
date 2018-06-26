Feature: Receive an ordered list of website
  I want to compare website views from my file
  I see the input in the console

  Scenario: I want websites to be ordered by most views
    Given a log files
    Then I output the result by most views

  Scenario: I want websites to be ordered by most unique page views
    Given a log files
    Then I output the result by most unique page views
