#Feature: DFC-3663 
  #Scenario Outline: DFC-3663
    #Given I am on the "Home" page
    #When I fill in "Location" with "<State>"
    #When I click the "Search" button
    #Then I wait 1 second
    #And I should see "Results"
    #When I click the "Start New Search" button
    #And I fill in "Location" with "<City&State>"
    #When I click the "Search" button
    #Then I wait 1 second
    #And I should see "Results"
    #When I click the "Start New Search" button
    #And I fill in "Location" with "<ZipCode>"
    #When I click the "Search" button
    #Then I wait 1 second
    #And I should see "Results"
    #When I click the "Start New Search" button
    #And I fill in "Location" with "<Zip_Code>"
    #And I move focus away from "Location"
    #And I fill in "Dialysis Facility Name" with "<FacilityName>"
    #When I click the "Search" button
    #Then I wait 1 second
    #And I should see "Results"
    #When I click the "Start New Search" button
    #And I fill in "Location" with "<City_State>"
    #And I move focus away from "Location"
    #And I fill in "Dialysis Facility Name" with "<FacilityName>"
    #When I click the "Search" button
    #Then I wait 1 second
    #And I should see "Results"
    #When I click the "Start New Search" button
    #And I should see "Home"
    #Examples:
      #|    State       | City&State     |  ZipCode   | Zip_Code  | FacilityName    |  City_State      |
      #|    Hawaii      | Sacramento, CA |   21244    |  21244    |   da            |  Baltimore, MD   |
      #|    Alaska      | Buffalo, NY    |   37664    |  37664    |   fm            |  Kingsport, TN   |
      #|    California  | Atlanta, GA    |   12345    |  21244    |   no            |  Baltimore, MD   |
      #|    Florida     | Tempe, AZ      |   98001    |           |                 |                  |
      #|    Virginia    | Boise, ID      |   77701    |           |                 |                  |
      #|    Montana     | Shreveport, LA |   66667    |           |                 |                  |
      #|    Arizona     |                |   11105    |           |                 |                  |
      #|    Tennessee   |                |            |           |                 |                  |
      #|    Mississippi |                |            |           |                 |                  |
      #|    Alabama     |                |            |           |                 |                  |
  
  ##Scenario: Smoke Test
    ##Given I am on the "Home" page
    ##When I fill in "Location" with "Hawaii"
    ##When I click the "Search" button
    ##And I should see "Results"
    ##When I click the "Start New Search" button
    ##And I fill in "Location" with "Sacramento, CA"
    ##When I click the "Search" button
    ##And I should see "Results"
    ##When I click the "Start New Search" button
    ##And I fill in "Location" with "21244" 
    ##When I click the "Search" button
    ##And I should see "Results"
    ##When I click the "Start New Search" button
    ##And I fill in "Location" with "77701" 
    ##And I press the "Tab" key on "//*[@id='searchTxtBox']"
    ##And I fill in "Dialysis Facility Name" with "da"
    ##When I click the "Search" button
    ##And I should see "Results"
    ##When I click the "Start New Search" button
    ##And I fill in "Location" with "Buffalo, NY"
    ##And I fill in "Dialysis Facility Name" with "gm" 
    ##When I click the "Search" button
    ##And I should see "Results"
    ##When I click the "Start New Search" button
    ##And I should see "Home"

























