## Practice
1. Take a look at the `saloon.rb` and `inn.rb` files. Is there any shared functionality?
2. Create a module called `Patronable`, and `Include` it in the two classes.  
3. Comment out OR delete the methods currently written in both classes.
4. Starting with `inn_spec.rb`, under the `describe 'utilizing the module' do` block, follow the instructions to complete the exercise.
*hint* `pry` might be your new best friend here. Write a method in the `module`, put a `pry` inside, then call the method in your test block. Once inside your `pry`, type `self` to see what you are, and how to access the data you need!
5. Once you've finished with `inn`, do the same for `saloon_spec.rb`

---------

### Check for Understanding

1. Why did we call the module `Patronable`? What part of the `Inn` and `Saloon` classes is it responsible for?
2. If we had another class that had a list of `patrons`, could we `mixin` this module?
