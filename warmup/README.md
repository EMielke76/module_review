## Warmup 
1. You should see three files, `gun_slinger`, `sheriff`, and a `runner`.
2. CD into the `warmup/lib` directory, and call the `runner` w/ `$ ruby runner.rb`. Do you see any repeated lines?
3. Take a look at the `gun_slinger` and `sheriff` classes. What functionality do they share? Is this DRY code?
4. How could you utilize a `module` to DRY up this code?
5. Make it happen! Create a `module`, `mixin` your `module` functionality to the two seperate classes, then call those new methods in the `runner`!
*note* If you need a refresher on how to do that, check out https://backend.turing.edu/module1/lessons/modules
