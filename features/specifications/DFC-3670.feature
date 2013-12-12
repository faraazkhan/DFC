Scenario: DFC-3670
Given I am on the "Home" page
When I fill in "Location" with "21001"
When I click the "Search" button
When I select "<ABERDEEN DIALYSIS>" from "<Dialysis Facility Information>"
When I click the "Pagination2" to go on the next page
When I select "<Davita DunDalk>" from "<Dialysis Facility Information>"
When I click the "Last Pagination" to go on the last page
When I select "<Wellspan Dialysid-York>" from "<Dialysis Facility Information>"
When I click the "Compare_Now" button
When I click the "Best_treatment_practices" tab
And I should see "Best_treatment_practices"
When I click the "Hospitalizations&deaths" tab
And I should see "Hospitalizations & deaths"
When I click the "ViewMoreDetails" button and pop up windows open up
When I click the "Close Window" to close view more details page
When I click the "ABERDEEN Dialysis" Link
When I click the "Print_All_Information" button and pop up window opens up
Then I click the "Close" to close Print All Information window


Home = http://medicare-iterationb1-test.cgifederal.com/dialysisfacilitycompare/search.html
Location = .//*[@id='searchTxtBox']
Search = .//*[@id='searchBoxButton']
ABERDEEN_DIALYSIS = .//*[@id='212650_chkbox']
Dialysis_Facility_Information = .//*[@id='sorter-1']/span
Pegination2 = .//*[@id='expColTable']/div[2]/div[2]/div/span/input[2]
Davita_Dundalk = .//*[@id='212616_chkbox']
Last Pagination = .//*[@id='lastButton']/img
Wellspan_Dialysid-York = .//*[@id='390046_chkbox']
Compare_Now = .//*[@id='resultsCompareTopButton']
Best_treatment_practices = .//*[@id='tab1']/a
Hospitalizations&deaths = .//*[@id='tab2']/a
Hospitalizations_&_deaths = .//*[@id='contentTab3']/div[2]/div/div[1]/h2
ViewMoreDetails = .//*[@id='Table_prnt2grp1_graphbuttons']/a[3]
Close_Window = .//*[@id='mymedicareli']/a
ABERDEEN_Dialysis = .//*[@id='provNm_212650']
Print_All_Information = .//*[@id='printAllTabsBtn']
