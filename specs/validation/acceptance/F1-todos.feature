Feature: F1 Todos

  @story-F1.1
  Rule: A visitor adds a todo by typing a short text label

    Scenario: Adding a todo
      Given Mia has an empty todo list
      When Mia adds a todo with the text "Buy milk"
      Then her list has exactly one todo, with the text "Buy milk"

    @negative
    Scenario: An empty todo is not added
      Given Mia has an empty todo list
      When Mia tries to add a todo with blank text
      Then her list still has no todos

    @negative
    Scenario: A whitespace-only todo is not added
      Given Mia has an empty todo list
      When Mia tries to add a todo containing only spaces
      Then her list still has no todos

  @story-F1.2
  Rule: Todos are shown in one plain list, in the order they were added

    Scenario: Todos appear in add order
      Given Mia has an empty todo list
      When Mia adds "Buy milk", then adds "Walk the dog", then adds "Write report"
      Then her list shows "Buy milk", "Walk the dog", "Write report" in that order

  @story-F1.3
  Rule: A visitor marks a todo complete, and can mark it incomplete again

    Scenario: Completing a todo
      Given Mia has a todo "Buy milk" that is not complete
      When Mia marks "Buy milk" as complete
      Then "Buy milk" is shown as complete

    Scenario: Un-completing a todo
      Given Mia has a todo "Buy milk" that is marked complete
      When Mia marks "Buy milk" as incomplete
      Then "Buy milk" is shown as not complete

    Scenario: A completed todo keeps its place in the list
      Given Mia has added "Buy milk", then "Walk the dog", then "Write report"
      When Mia marks "Walk the dog" as complete
      Then her list still shows "Buy milk", "Walk the dog", "Write report" in that order

  @story-F1.4
  Rule: A visitor deletes a todo they no longer need

    Scenario: Deleting a todo
      Given Mia has added "Buy milk" and "Walk the dog"
      When Mia deletes "Buy milk"
      Then her list has exactly one todo, "Walk the dog"

  @story-F1.5
  Rule: A visitor's todos survive a page refresh, saved in their own browser

    Scenario: Todos are still there after a refresh
      Given Mia has added "Buy milk" and marked it complete
      When Mia refreshes the page
      Then her list still shows "Buy milk" as complete
