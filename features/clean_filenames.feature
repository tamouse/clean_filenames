Feature: My bootstrapped app kinda works
  In order to get going on coding my awesome app
  I want to have aruba and cucumber setup
  So I don't have to do it myself

  Scenario: App just runs
    When I get help for "clean_filenames"
    Then the exit status should be 0
    And the banner should be present
    And the banner should document that this app takes options
    And the following options should be documented:
      |--version|
      |--ignore-levels|
    And the banner should document that this app's arguments are:
      |path_name|

  Scenario Outline: Clean file path names
    When I run `clean_filenames --log-level=debug --ignore-levels=<level> '<path>'`
    Then the exit status should be 0
    And the output should contain "<clean>"

    Examples:
      | level | path                         | clean                        |
      | 0     | A Path/And Another/path.tom  | a-path/and-another/path.tom  |
      | 1     | A Path/And Another/path.tom  | A Path/and-another/path.tom  |
      | 2     | A Path/And Another/path.tom  | A Path/And Another/path.tom  |
      | 0     | /A Path/And Another/path.tom | /a-path/and-another/path.tom |
      | 1     | /A Path/And Another/path.tom | /A Path/and-another/path.tom |
      | 2     | /A Path/And Another/path.tom | /A Path/And Another/path.tom |
      
