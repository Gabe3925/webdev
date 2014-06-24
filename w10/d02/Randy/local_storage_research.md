## Intro to Local Storage

As we do dive into building more client-side applications, we're going to start thinking about how and where we store and manage our data. In doing so, we'll make use of browsers' local storage, introduced in HTML5. Take the next 15 minutes to research local storage, answering the questions below. 

- What is local storage?
  - Answer: Local storage is a system of key-value pairs introduced in HTML5. It allows web browsers to to store these key/value pairs locally in the web browser.

- What problem does it solve?
  - Answer: Issues with cookies like sending cookies with every http request and local storage is available in all modern browsers without third-party plugins. Local storage provides way more space than cookies. Local storage avoids leaks that can sometimes occur with cookies when using the same site in multiple windows. The data in local storage does not expire. Much more space 5-10MB per origin.

- What are the alternatives?
  - Answer: Cookies, database.

- Come up with a scenario in which local storage would be useful.
    - Scenario: Storing small bits of user data for use within an app. Local storage would be superior as it would eliminate a need to communicated with a server. Not making that request saves resources and time.

- Think of a scenario where server-side storage would be preferred.
    - Scenario: If there is large amounts of data, or some data you want to persist in long term storage, server side storage would be more useful as it allows you to save more than 5MB-10MB and keep it as long as required.
