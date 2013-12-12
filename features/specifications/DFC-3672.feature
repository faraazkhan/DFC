Scenario: DFC-3672
Given I am on the "home" page
When I click the "About Dialysis Facility Compare" button
And I should see "About Dialysis Facility Compare" 
When I click the "Close Window" link
When I click the "About_the_Data" button 
And I should see "About the data" 
When I click the "Close Window" link 
When I click the "Resources" button 
And I should see "Resources" 
When I click the "Close Window" link 
When I click the "Help" button 
And I should see "Help" 
When I click the "Close Window" link


Home = http://medicare-iterationb1-test.cgifederal.com/dialysisfacilitycompare/search.html
About_Dialysis_Facility_Compare = .//*[@id='nav-list']/li[2]/a
About_Dialysis_Facility_Compare = .//*[@id='left-navs']/ul/li[1]/a
Close_Window = .//*[@id='mymedicareli']/a
About_the_Data = .//*[@id='nav-list']/li[3]/a
About_the_Data = .//*[@id='AboutData1']
Close_Window = .//*[@id='mymedicareli']/a
Resources = .//*[@id='nav-list']/li[4]/a
Resources = .//*[@id='left-navs']/ul/li[3]/a
Close_Window = .//*[@id='mymedicareli']/a
Help = .//*[@id='nav-list']/li[5]/a
Help = .//*[@id='content-column']/h1
Close_Window = .//*[@id='mymedicareli']/a