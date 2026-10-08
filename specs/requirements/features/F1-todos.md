# Todos

## Purpose

Let a visitor capture, track, and complete a short list of personal tasks —
one flat list, no categories or sharing — entirely without signing in. The
list is saved in the visitor's own browser (local storage) so it survives a
page refresh, but it is never stored on a server.

## User Stories

- F1.1 As a visitor, I add a todo by typing a short text label and submitting it.
- F1.2 As a visitor, I see all my todos in one plain list, in the order I added them.
- F1.3 As a visitor, I mark a todo as complete, and can mark it incomplete again.
- F1.4 As a visitor, I delete a todo I no longer need.
- F1.5 As a visitor, my todos are still there if I refresh the page, saved in my own browser.

## Decisions

- A todo carries only a short text label — no due dates, notes, or other fields.
- A todo cannot be edited after it is added; to change one, delete it and add a new one.
- The list is plain: no filtering by status (All/Active/Completed) and no bulk "clear completed" action.
- A completed todo stays in the list, in its original position, shown as done.
- An empty or whitespace-only todo cannot be added.