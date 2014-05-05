## Peter Lai's Ruby Powered Shopping Spree

####Background:
Early this morning, Peter Lai infused his credit card with the essence of a powerful Ruby. He's been on a preposterous shopping spree ever since.

```Ruby
store = ["Chipotle", "Eden Prairie Mall", "McDonalds", "Kohls", "Mall of America"]

quantities = [30, 5, 10, 20, 50]

items = [
  "Gummy Cola Bottle",
  "Guava Candy",
  "Taco",
  "Bibimbop",
  "Burrito",
  "Channa Masala",
  "Lettuce Wraps",
  "PIZZA",
  "Cheese",
  "(Disney Soundtrack)"
  "Whiskey",
  "Athletic Socks",
  "Teach Like a Champion",
  "Practice Perfect"
]
```

__Step 1.__
Using the "pg" gem, connect to your `shopping_db`. Add 50 purchases at 50 stores, randomly assigning a store, quantity, item, and price 

__Step 2.__ 
Add 25 receipts to the `receipts` table, randomly assigning a store, quantity, item, and price.
  - Hint: look up the `.sample` method.



