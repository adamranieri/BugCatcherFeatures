Feature: Defect Status

#Declarative Style

    Scenario: Change Status
        Given The tester is on the Home Page 
        Then The tester can can see only defects assigned to them
        When The tester changes to defect to any status 
        Then The tester should see the defect has a different status