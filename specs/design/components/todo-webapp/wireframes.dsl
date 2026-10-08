screen Todos "Add, complete, and delete items in your todo list"
  navbar "Simple Todos"
  row
    input "What needs to be done?"
    button "Add" primary
  card "Your todos"
    row
      checkbox "Buy milk" active
      right
      button "Delete"
    row
      checkbox "Walk the dog"
      right
      button "Delete"
    row
      checkbox "Write report"
      right
      button "Delete"

flow "Manage todos"
  description "A visitor adds, completes, and deletes items in their todo list"
  Todos
