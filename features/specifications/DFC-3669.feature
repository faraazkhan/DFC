Feature: Smoke Test DFC Search
  Scenario Outline: Search with Valid Locations
    Given I am on the "Home" page
    When I fill in "Location" with "<Location>"
    And I click the "Search" button
    Then I should see "<ExpectedResult>" within "ResultsTable"
    Examples:
      |Location      | ExpectedResult                                       |
      |22031         | FAIRFAX HOSPITAL FOR CHILDREN                        |
      |Sacramento, CA| ALHAMBRA DIALYSIS CENTER                             |



  Scenario Outline: Search with Valid Locations and Partial Facility Name with multiple matches
    Given I am on the "Home" page
    When I fill in "Location" with "<Location>"
    And I move focus away from "Location"
    And I fill in "Dialysis Facility Name" with "<FacilityName>"
    And I click the "Search" button
    Then I should see "<ExpectedResult>" within "ResultsTable"
    Examples:
      |Location      | FacilityName   | ExpectedResult                            |
      |98201         |  pu            | PUGET SOUND KIDNEY CENTER                 |
      |ATLANTA, GA   |  col           | COLLEGE PARK DIALYSIS CENTER LLC          |


  Scenario Outline: Search with Valid Zip Code and Partial Facility Name with a single matche
    Given I am on the "Home" page
    When I fill in "Location" with "<Location>"
    And I move focus away from "Location"
    And I fill in "Dialysis Facility Name" with "<FacilityName>"
    And I click the "Search" button
    Then I should see "<ExpectedResult>" within "ProfileInformation"
    Examples:
      |Location       | FacilityName   | ExpectedResult                            |
      |98201          |  smokey        | PUGET SOUND KIDNEY CENTER SMOKEY POINT    |
      |Tempe, AZ      |  arca          | ARCADIA DIALYSIS CENTER (FMC)             |

  Scenario: Restart search with the Start New Search Button
    Given I am on the "ResultsForAtlantaGA_Col" page
    And I click the "Start New Search" button
    Then I should be redirected to the "Home" page

