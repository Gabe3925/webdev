# Rspec Water Bottle

Using TDD, develop a class for a Water Bottle given the description of the behavior below:

When a water bottle is created, it is empty, but you can fill it with water. You can drink from it and get water back unless the bottle is empty. Drinking from the bottle empties it.

When you are done, peruse slides 1 - 20 of this [Rspec resource](http://jakegoulding.com/presentations/rspec-structure/
) which explains more about how to use `context`, `before`, `let`, and `subject`. If it changes how you wrote your tests, go back and refactor your tests.

### Bonus
Change it so that each time you fill the bottle, it is good for 3 sips (it empties after you drink from it 3 times instead of once)

###Commands you will need:
* `rspec --init` sets up an `.rspec` file, a spec folder, and `spec_helper` file in whatever directory you issue the command.

* `rspec` runs your test suite.

* Your spec file will have to `require_relative`

