#Morning Exercise

### Saved By The Bell: The Newest Class
- Create a file called saved_by_the_bell.rb
- Here is an array containing all your names
```
students = ["Adam Barrett","Jacob Cain","Mikael Davis","Salil Doshi","Jon Eva","Elaine Fang","Parker Hart,"Richard Hessler","Mary Hipp","Inhak Kim","Randy Latz","Yi-Hsiao Liu","Alexi Phillipson","Matt Rundo","Gabe Snyder","Stephen Stanwood","Joella Straley","Brett Wallace","Thomas Weaver"]
```
- Write a program that:
  - prints the name of one random student
  - iterates through the `students` array, printing `"STUDENT_NAME is learning to learn."`
  - iterates through the `students` array using the `each_with_index` method, printing `"STUDENT_NAME is the student in the STUDENTS_INDEX_VALUE index"`
    - You'll probably have to [look it up](http://apidock.com/ruby/Enumerable/each_with_index)
  - Finds and prints the number of students in the class
  - Finds and prints the index of `"Stephen Stanwood"`
  - Prints the fifth person
  - Prints a list of all the student names on one line, with each name separated by a pipe: `|`
  - Prints all of the students with J names (Jacob, Jon, and Joella)

### Arrays & Hashes
**Given the following data structure:**

    users = {
      "Peter" => {
        :github => "peterylai",
        :favorite_numbers => [12, 42, 75],
      },
      "PJ" => {
        :github => "h4w5",
        :favorite_numbers => [8, 12, 24],
      },
      "Jeff" => {
        :github => "jkonowitch",
        :favorite_numbers => [12, 14, 85],
      },
    }

1. How would you access Jeff's Github handle (i.e. the string "jkonowitch")?
2. How would you add the number 7 to PJ's favorite numbers?
3. How would you add yourself to the users hash?
4. How would you return the array of Peter's favorite numbers?
5. How would you return the smallest of Jeff's favorite numbers?
6. How would you return an array of PJ's favorite numbers that are also even?
7. How would you return an array of the favorite numbers common to all users?
8. How would you return an array containing all users' favorite numbers, sorted, and excluding duplicates?
9. How would you change Peter's favorite number 12 into the string "12"?
