Scenario: DFC-3671
Given I am on the "Home" page
And I enter "21001" in the "Location" field
When I click the "Search" button
When I click the "ABERDEEN DIALYSIS" Link
And I should see "ABERDEEN DIALYSIS" 
When I click the "Best_treatment_practices" tab
And I should see "Best treatment practices"
When I click the "Hospitalizations&deaths" tab
And I should see "Hospitalizations & deaths" 
When I click the "ViewMoreDetails" button and a popup window opens up
And I should see "Details" 
And I click the "Close Window" to close "View More Details" page
When I click the "PrintAllInformation" button 
And I click on "X" to close pop up window


Home = http://medicare-iterationb1-test.cgifederal.com/dialysisfacilitycompare/search.html
Location = .//*[@id='searchTxtBox']
Search = .//*[@id='searchBoxButton']
ABERDEEN_DIALYSIS = .//*[@id='resultsDataTable']/tbody/tr[1]/td[1]/div/a
Best_treatment_practices = .//*[@id='tab1']/a
Best_treatment_practices = .//*[@id='measureInfo']/div[1]/h3
Hospitalizations&deaths = .//*[@id='tab2']/a
Hospitalizations_&_deaths = .//*[@id='hospMeasureInfo']/div[1]/h3
ViewMoreDetails = .//*[@id='Table_prnt2grp1_graphbuttons']/a[3]
Details = .//*[@id='content-column']/h1
Close_Window = .//*[@id='mymedicareli']/a
PrintAllInformation = .//*[@id='printAllTabsBtn']
