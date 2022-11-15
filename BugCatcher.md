
# BugCatcher
A team has recently completed a prototype of a new Test Case and Bug Reporting managagement system. This system is for internal use. Many features are incomplete and the application lacks any styling. The team expects the application to have bugs, both visual and logical. You have been tasked with testing the application, specifically writing the automation tests so that future sprints on the project can do rapid regression testing. You will not have access to the source code of the application. However, you are being provided a a version of the application up and running in a dev environment. You will have access to the underlying API for the application. **Use the dev header with your id** to avoid stepping on your fellow testers' data. The feature files are *not* perfect. You may edit them if needed or add more. However, you are responsible for fulfilling the intent of every scenario.

## Deliverables
- Application with as many features automated as possible
  - This code should be uploaded to Github
  - You will demo the automation tests
- A Requirements Matrix. 
  - You may use the one provided or as a template to base your own off of. 
  - All user stories must be included but you can add more.
- A Defect Report 
   - You may use the one provided or as a template to base your own off of. 
- Used test reporting software
  - Your trainer will have shown how to use a Test Reporting software to track your progress

## Rubric
|Deliverable| Points |
|-----------|--------|
|Features Automated | 15 |
|Test Reporting Software Used| 10 | 
|Defect Report | 5 |
| RTM | 5 |
|Total Points | 35 |

## Test Data
- All dynamically created entities have a randomly generated 5 digit number
- prebuilt ids have a 3 digit number and have been organized to make testing easier to remember
  - 900's defects
  - 800's test cases
  - 700's matrices

## Note Bugs
- Keep a list of bugs and rate them using your own severity and priority scale

### Imperative vs Declarative Gherkin
- Imperative
  - Focuses on the specifics and *how* to fulfill a scenario
  - Scenarios tend to be longer and references specific UI elements
    - When The guest clicks on the submit button
    - Then The guest sees a popup saying a new user was created 
  - Pros
    - Specifics could help design the UI if used proactively
    - Small steps can be reusable in most test runners
  - Cons
    - Scenarios are more likely to break due to small UI changes
    - Ties the Gherkin code to the test code (could be a positive sometimes)
    - More difficult to write and maintain
    - Lowers readability 
```gherkin

Feature: login
    Given The guest is on the login page
    When The guest types adam99 into username input
    When The guest types ultraPa$$ into password input 
    When The guest clicks on the login button
    Then The guest should be on the home page 
    Then The title should be Home

```
- Declarative
  - Focuses on business rules *what* and requirements are needed to fulfill a scenario
  - Scenarios are shorter and often avoid any reference to specific UI elements
  - Pros
    - Very Readable
    - Allows for more flexiblity from the UI 
  - Cons
    - Might be too vague to be helpful 
    - Lack of atomic steps might result in redundant test code
```gherkin

Feature: login
    Given The guest is not logged in
    When The guest logs in using a correct username and password
    Then The user should be logged in

```
- **Moral of the story**
  - There is no always best version
  - Pick what the application or scenario calls for
  - The feature files for this application include both imperative and declarative styles for exposure
    - The declaritive ones will require more intepration in your automation code than the imperative
