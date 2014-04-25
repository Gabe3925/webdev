#Morning Exercise

### Saved By The Bell: The Newest Class
- Create a file called saved_by_the_bell.rb
- Here is an array containing all your names
```
students = ["Adam Barrett","Jacob Cain","Mikael Davis","Salil Doshi","Jon Eva","Elaine Fang","Parker Hart,"Richard Hessler","Mary Hipp","Inhak Kim","Randy Latz","Yi-Hsiao Liu","Alexi Phillipson","Matt Rundo","Gabe Snyder","Stephen Stanwood","Joella Straley","Brett Wallace","Thomas Weaver"]
```
- Write a program that:
  - iterates through the `students` array, printing `"STUDENT_NAME is learning to learn."`
  - iterates through the `students` array using the `each_with_index` method, printing `"STUDENT_NAME is the student in the STUDENTS_INDEX_VALUE index"`
  - Finds and prints the number of students in the class
  - Finds and prints the index of `"Stephen Stanwood"`
  - Prints the fifth person
  - Prints all of the students with J names (Jacob, Jon, and Joella)

### Searching for a Soul Mate
**Copy and paste the following into pry:**

    ok_cupidites = {
      "nicestGuy5530" => {
        :name => "Brad Ladd",
        :in_a_relationship => false,
        :hobbies => ["working out", "seeing concerts", "watching sports", "eating"],
        :seeking => ["friendship", "short-term dating", "a long-term relationship", "anything I can get"]
      },
      "southwesternDave" => {
        :name => "Dave Tacoma",
        :in_a_relationship => false,
        :hobbies => ["bird watching", "cross-country skiing", "When I'm bored I do this thing I call 'friendly' prank calls, where I just call strangers and kinda ask them how they're doing and stuff, in a friendly way"],
        :seeking => ["a long-term relationship", "short-term dating"]
      },
      "WOOTman" => {
        :name => "Jeff Lamplugh",
        :in_a_relationship => true,
        :hobbies => ['improvisational comedy', 'aquacizing', 'private investigation'],
        :seeking => []
      }
    }

1. Use pry to return an array of keys for the `ok_cupidites` hash.
2. Use pry to return whether `southwesternDave` is in a relationship.
3. Use pry to add `watching True Detective` to `WOOTman`'s hobbies. 
4. Use pry to return an array of the things `nicestGuy5530` is seeking. 
5. Use pry to retrieve `southwesternDave`'s third hobby.
6. How would you return an array of only the ok_cupities that are single?
