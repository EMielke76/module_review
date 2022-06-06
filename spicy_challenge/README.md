## Spicy Challenge
1. Utilizing the given `Patronable` module, write functionality that will get each test within `spicy_spec` to pass.
2. Notice that we're testing the `Patronable` module directly (`RSpec.describe Patronable do`), but calling the methods to each of our respective `Inn` and `Saloon` objects. You should be writing your methods directly on the `Patronable` module.
3. When you've successfully passed all the tests, take a look at the `Patronable` module. Is your code DRY? Are there any repeated lines/functionality? If so, refactor your code, then `commit` your work and submit a `pull request` against the main repo!

---------

### Check for Understanding

1. In each exercise/scenario you completed, how do the objects you created relate to each other?
2. What are the responsibilities of each class? Are there ever responsibilities that "leak" into other classes?
3. Why do you think we separate these classes and their responsibilities out in the first place? What would the code look like if we ___didn't___ do this?
