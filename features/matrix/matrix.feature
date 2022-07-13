Feature: Matrix

# Declarative Style

    Scenario: Create a New Matrix
        Given A manager is on their home page
        Then A manager can pull up a form to make a new matrix 
        When A manager creates a title for a matrix 
        When A manager adds requirements to a matrix
        When A manager saves a matrix 
        Then The matrix should be visible for all testers and managers

    Scenario: Update Defects
        Given A manager or tester has selected a matrix
        When A manager or tester adds or removes defects
        When A manager or tester confirms their changes 
        Then Then the matrix should saved  

    Scenario: Update Test Cases
        Given A manager or tester has selected a matrix
        When A manager or tester adds or removes Test Cases
        When A manager or tester confirms their changes 
        Then Then the matrix should saved  

