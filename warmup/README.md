## Warmup
- CD into the `lib` directory, and call the `runner` w/ `$ ruby runner.rb`. Do you see any repeated lines?
- Take a look at the `gun_slinger` and `sheriff` classes, then answer these questions:
1. What functionality do these classes share?
2. Is this DRY code?

Let's Create a `module` called `Quoteable` to help us DRY this code up.  
- In the `Quoteable` module, create a new method for each bit of shared functionality between the two classes.
- `Include` the module into both of the classes (don't forget to `require_relative`!)
- Remove the lines of shared functionality by either deleting or commenting them out
- Call you new methods in the `runner` file to ensure you have the same functionality!
