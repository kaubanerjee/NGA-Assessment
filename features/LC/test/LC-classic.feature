Feature: Learning Curve Classic Assignment

Scenario: Student Takes a LC Assessment
  Given I start a new course as "student1"
    And I start a new assignment as "student1"
    And I log into an assignment in "LCUrl" as "student1"
  Then I check accessibility on "Landing" page
  When I view the student landing page for LC
  Then I can start the assessment "LC"
  Then I check accessibility on "Quiz" page
  Given I see a question, I can answer it "Correct"
    And I see a question, I can answer it "Wrong"
    And I see a question, I can open the ebook
  Then I complete 50% of the assignment
    And I complete 100% of an LC assignment
  Given I have completed an LC assignment, I can go back and answer more questions.
    And I see a question, I can answer it "Correct"
    And I see a question, I can answer it "Correct"
    And I log into an assignment in "LCUrl" as "instructor"
  Then I check accessibility on "Instructor" page
    And I verify that there are "1" students
    And I verify the students info is correct for LC
    And I verify the class average for "LC"

Scenario: Student Takes a LC Assessment
  Given I log into an assignment in "LCUrl" as "student2"
  When I view the student landing page for LC
  Then I can start the assessment "LC"
  Given I see a question, I can answer it "Correct"
    And I see a question, I can answer it "Wrong"
    And I see a question, I can open the ebook
  Then I complete 50% of the assignment
    And I complete 100% of an LC assignment
  Given I log into an assignment in "LCUrl" as "instructor"
  Then I verify the class average for "LC"
