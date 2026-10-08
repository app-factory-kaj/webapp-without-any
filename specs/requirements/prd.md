# Simple Todos

## Problem Statement

People often want to jot down and track a short list of personal tasks right
now, without creating an account, remembering a password, or trusting a
service to store their data. Most todo apps require sign-in and sync, which is
more ceremony than a quick, personal task list needs.

## Solution

A lightweight, single-page todo web app anyone can open and use immediately:
no sign-in, no accounts, and no server-side database. A visitor keeps one flat
list — add, complete, and delete tasks — and the list is saved only in their
own browser (local storage), so it survives a page refresh but is never sent
to or stored on a server, and never follows them to another device or browser.

## Actors

- **Visitor** — anyone who opens the app. There are no accounts and no roles:
every visitor simply sees and manages their own local todo list.

## Features

- F1 [Todos](features/F1-todos.md)

## Product-wide

See [Product-wide](product-wide.md) for the rules that shape the whole product
(no authentication, no server-side storage).

## Out of Scope

- Accounts, sign-in, or any per-user identity. *\[org default overridden by user's explicit request\]*
- Multi-user sharing or collaboration on a list.
- Server-side storage or a database of any kind.
- Syncing or carrying the list across devices or browsers.
- Categories, tags, boards, or projects — one flat list only.

