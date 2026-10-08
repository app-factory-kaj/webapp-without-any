# Product-wide

Rules that shape the whole product. There is only one feature (Todos), but
these decisions are about the product's overall shape rather than about task
stories themselves.

## Decisions

- No authentication, accounts, or sign-in of any kind; the app is used
entirely anonymously. This overrides the organization's default of signing
every web app in through Thunder — the user explicitly asked for a webapp
"without any authentication". \[org default overridden by user\]
- No server-side database or backend storage. All todo data lives only in the
visitor's own browser (local storage); it is never transmitted to or kept by
a server, and does not sync across devices or browsers.