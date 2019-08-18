###  Translation from RTF performed by UnRTF, version 0.21.10 
### font table contains 1 fonts total

-----------------
User: SchoolAdmin
Story: School invites student

Feature: Add student
Background:
 	Given: User is logged in

Scenario: Adding Student Information
	# What is an AddStudent Tab, is it a subsection of another tab
	# What main tab does it belong to?
 	Given: User is on AddStudent tab 
	# What student information? Everything needs to be concrete.

	# Does Admin only enter student information into form? Or can they import
 	When: User enter student information into form
 	And: Presses Add button
 	Then: Status of action returns to user


Scenario: Status returns Student Already Enrolled
 Given: User has added student information in AddStudent menu and pressed Add button
 Then: User receives Student Already Enrolled message.
 When: User clicks Okay button
 Then: Message window closes
 And: User returns to AddStudent menu


Scenario: StudentInvite successfully sent
 Given: User has added student information in AddStudent menu and pressed Add button
 When: Student is eligible to be added
 Then: User receives message that download and SD link successfully sent to student
 When: User presses Okay button
 Then: Student added to StudentMenu

Scenario: User opens StudentMenu
 Given:User is on StudentMenu page
 Then: User sees a list of students in scroll down menu
 And: Each student cell contains Student info and status
 When: Student successfully added
 Then: Status is successful 


Scenario: Student record not found
 Given:User is on StudentMenu page and student status is NotFound
 And: User clicks on status cell
 Then: User sees message record doesnt exist in schoolDB
 And: AddNewStudent button shown on bottom
 When: User clicks AddNewStudent
 Then: User returns to StudentMenu and student status is Successful. 

Scenario: Student record found but DID exists
 Given:User is on StudentMenu page and student status is DidExists
 And: User clicks on status cell
 Then: User sees message DID already exists
 And: SendMessageExistingDID button shown at bottom
 When: User clicks SendMessageExistingDID button
 Then: User receives confirmation message Recovery Message Sent
 And: User returns to StudentMenu (will the student be removed from StudentMenu?)

Scenario: Student record found but details conflict
 Given:User is on StudentMenu page and student status is Conflict
 And: User clicks on status cell
 Then: User sees details of conflict
 And: User sees ConflictResolution Button
 When: User clicks ConflictResolution
 Then: ConflictResolutionTab opens
 And: Saad wonders how conflict resolution would work(is this a feature?)



Feature: Search Student
  In order to select a student
  As a User
  I want to be able to search
  Background:
    Given the following StudentInformation as filters:
      | name | DOB | StudentID | Contact | DateAdded | Status |
 And: I am on the StudentMenu

  Scenario: without filters
 Given: I am in StudentMenu
    Then: I should see list sorted by name

  Scenario: search with a filter
 Given: User wants to search with a filter
 When: User selects filter type or types
 And: User enters metrics of searching filter
 Then: User sees result based on filter metrics
