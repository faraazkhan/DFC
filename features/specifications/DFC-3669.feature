Scenario: DFC-3669
Given I am on the "Home" Page
And I enter "Hawaii" in the "Location" field
When I click the "search" button
And I select "<Shifts Starting After 5 PM>|<In-Center Hemodialysis>|<Peritoneal Dialysis >|<Home Hemodialysis Training>" from the "Find Dialysis Facilities"
When I click the "Update Results" button
And I click "<Shifts Starting After 5 PM>|<In-Center Hemodialysis>|<Peritoneal Dialysis >|<Home Hemodialysis Training>" from the "Find Dialysis Facilities"
When I click the "Update Results" button 
And I select "<ALEXIS DIALYSIS CENTER>|<ALLIANCE COMMUNITY DIALYSIS>|<ANDOVER DIALYSIS>" from the "<Dialysis Facility Information >"
When I click the "Compare Now" button
And I should see "Compare Dialysis Facilities"


Home = http://medicare-iterationb1-test.cgifederal.com/dialysisfacilitycompare/search.html
Location = .//*[@id='searchTxtBox']
Search = .//*[@id='searchBoxButton']
Shifts_Starting_After_5_PM = .//*[@id='findFacilities']/ul/li[1]/label
In-Center_Hemodialysis = .//*[@id='findFacilities']/ul/li[2]/label
Peritoneal_Dialysis = .//*[@id='findFacilities']/ul/li[3]/label
Home_Hemodialysis_Training = .//*[@id='findFacilities']/ul/li[4]/label
Find_Dialysis_Facilities = .//*[@id='findFacilities']/legend
Update_Results = .//*[@id='btnUpdateResultsBottom']