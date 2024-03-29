# Validating Credit Card Numbers

Credit card numbers can be validated by reverse engineering the [Luhn algorithm](http://en.wikipedia.org/wiki/Luhn_algorithm). Simply stated, the validation works like this:

1. Starting with the next to last digit of the card number and continuing with every other digit going back to the beginning, double the digit.

2. Sum all of the *digits* in the resulting number.

3. If the resulting sum is a multiple of 10, the number is valid.

For example, given the card number 4408 0412 3456 7893:

```ruby
# Orig  :  4 4 0 8 0 4 1 2 3 4   5 6   7 8   9 3
# Step 1:  8 4 0 8 0 4 2 2 6 4  10 6  14 8  18 3
# Step 2:  8+4+0+8+0+4+2+2+6+4+1+0+6+1+4+8+1+8+3 = 70
# Step 3:  70 % 10 == 0

# NOTE: In step 1, we double the second to last digit and get 18, but in Step 2, we add the *digits* 1 and 8.
```

### Directions
Choose either Ruby or JavaScript.

Write a method `valid` that takes a number as an argument and returns true for a valid number and false for an invalid number

For your reference:
* 1234567890123456 is not valid
* 4408041234567893 is valid
* 38520000023237 is valid
* 4222222222222 is valid

### Bonus
* Implement it in the other language (Ruby or JavaScript).

### Appendix

Luhn Algorithm Reference: http://en.wikipedia.org/wiki/Luhn_algorithm

Challenge Source: http://www.rubeque.com/problems/validating-credit-card-numbers
