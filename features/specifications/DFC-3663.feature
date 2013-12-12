  Scenario Outline: DFC-3663
    Given I am on the "Home" Page
    When I fill in "Location" with "<State>"
    When I click the "Search" button
    And I should see "Results"
    When I click the "Start New Search" button
    And I enter "<City&State>" in the "Location" field
    When I click the "Search" button
    And I should see "Results"
    When I click the "Start New Search" button
    And I enter "<ZipCode>" in the "Location" field
    When I click the "Search" button
    And I should see "Results"
    When I click the "Start New Search" button
    And I enter <Zip_Code> in the "Location" field
    And I enter <Facility_Name> in the "Dialysis Facility Name" field
    When I click the "Search" button
    And I should see "Results"
    When I click the "Start New Search" button
    And I enter <City_State> in the "Location" field
    And I enter <Facility_Name> in the "Dialysis Facility Name" field
    When I click the "Search" button
    And I should see "Results"
    When I click the "Start New Search" button
    And I should see "Home"

    State       | City&State     |  ZipCode   | Zip_Code  | Facility_Name   |  City_State      |
    Hawaii      | Sacramento, CA |   21244    |  21244    |   da            |  Baltimore, MD   |
    Alaska      | Buffalo, NY    |   37664    |  37664    |   fm            |  Kingsport, TN   |
    California  | Atlanta, GA    |   12345    |  21244    |   no            |  Baltimore, MD   |
    Florida     | Tempe, AZ      |   98001    |           |                 |                  |
    Virginia    | Boise, ID      |   77701    |           |                 |                  |
    Montana     | Shreveport, LA |   66667    |           |                 |                  |
    Arizona     |                |   11105    |           |                 |                  |
    Tennessee   |                |            |           |                 |                  |
    Mississippi |                |            |           |                 |                  |
    Alabama     |                |            |           |                 |                  |






















