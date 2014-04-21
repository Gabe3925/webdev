W1D1 Notes
==========

Programing Language
-------------------
* [Low-level] - Machine code, Assembly language
* [High-level] - Java, Lisp, R, Python, Visual Basic, Ruby

[low-level]: http://en.wikipedia.org/wiki/Low-level_programming_language
[high-level]: http://en.wikipedia.org/wiki/High-level_language

Web Application Framework
-------------------------
 * [Web application framework] - Rails, Django, Drupal

[web application framework]: http://en.wikipedia.org/wiki/Web_application_framework

How does the Internet work?
---------------------------
**Front End**
* [Web browser] - Google Chrome, Firefox, IE
* [Client-side scripting] - HTML, CSS, JS

[web browser]: http://en.wikipedia.org/wiki/Web_browser
[client-side scripting]: http://en.wikipedia.org/wiki/Client-side_scripting

**Internet**
* [Domain Name System] - name server, URLs, IP address
* [Client-server model] - REST

[domain name system]: http://en.wikipedia.org/wiki/Domain_name_system
[client-server model]: http://en.wikipedia.org/wiki/Client-server_model

**Back End**
* [Web server] - Heroku, Apache, Nginx
* [Server-side scripting] - Ruby, Python, PHP
* [Solution stack] - LAMP, WAMP, MEAN

[web server]: http://en.wikipedia.org/wiki/Web_server
[server-side scripting]: http://en.wikipedia.org/wiki/Server_side_scripting
[solution stack]: http://en.wikipedia.org/wiki/Solution_stack

**Database**
* [Relational database management system] - Postgres, MySQL
* [NoSQL] - MongoDB

[relational database management system]: http://en.wikipedia.org/wiki/Relational_database_management_system
[NoSQL]: http://en.wikipedia.org/wiki/NoSQL

Model-View-Controller
---------------------
* Model -
* View -
* Controller -

Ruby
----
**1. String Interpolation**

Must use double-quotes:
  ```ruby
  "#{name} the #{animal} is #{age}"
  => "Jim the Koala is 28"
  '#{name} the #{animal} is #{age}'
  => "\#{name} the \#{animal} is \#{age}"
  ```
**2. Concatenation vs. addition**
  ```ruby
  1 + 1
  => 2
  "1" + "1"
  => 11```

**3. Fixnum vs. Float**
  ```ruby
  9 / 2
  => 4
  9.0 / 2
  => 4.5
  ```

**4. Unshift**
  ```ruby
  [1, 2, 3, 4].unshift(0)
  => [0, 1, 2, 3, 4]
  ```

**5. Chomp**
  Trims line returns `\n`, `\r` at the end of a string.
  ```ruby
  "Best regards,\nYi-Hsiao".chomp
  => "Best regards,\nYi-Hsiao"
  "Hello\n.chomp
  => "Hello"
  ```

GitHub
------
1. Create a Repo - https://help.github.com/articles/create-a-repo
2. Fork a Repo - https://help.github.com/articles/fork-a-repo
3. Pull Requests - https://help.github.com/articles/using-pull-requests
4. Delete a Repo - https://help.github.com/articles/deleting-a-repository
