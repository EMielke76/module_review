# Module Review
This repository is meant to be a review/exercise in understanding Modules

## How we're gonna do this thing
1. Fork, then clone this repository
2. Hang out for a minute
3. Contemplate the "Before we get started" questions

--------

## Before we get started...
Take a few minutes to answer these questions. Write your answers down in a notebook, we'll discuss these before starting the exercises!
1. What is a `module`?
2. How is a module different from a `Class`? How are the two similar?
3. Why do we use `modules`? Which principal of programming does a module help us adhere to?

---------

## Let's do one together!
- Starting in the `warmup` directory, let's take a take a look at the `gun_slinger` and `sheriff` classes.
1. What functionality do these classes share?
2. Is this DRY code?

Let's create a `module` called `Quoteable` to help us DRY this code up.  
- In the `Quoteable` module, we'll create a new method for each bit of shared functionality between the two classes.
- We'll `Include` the module into both of the classes (don't forget to `require_relative`!)
- Then, remove the lines of shared functionality by either deleting or commenting them out
- Call our new methods in the `runner` file to ensure we have the same functionality!

-------

## Your turn!
- CD into the `practice` directory
1. Take a look at the `saloon.rb` and `inn.rb` files. Is there any shared functionality?
2. Create a module called `Patronable`, and `Include` it in the two classes.  
3. Comment out OR delete the methods currently written in both classes.
4. Starting with `inn_spec.rb`, under the `describe 'utilizing the module' do` block, follow the instructions to complete the exercise.
*hint* `pry` might be your new best friend here. Write a method in the `module`, put a `pry` inside the method, then call said method in your test block. Once inside your `pry`, type `self` to see what you are, and how to access the data you need!
5. Once you've finished with `inn`, do the same for `saloon_spec.rb`

### Check for Understanding

1. Why did we call the module `Patronable`? What part of the `Inn` and `Saloon` classes is it responsible for?
2. If we had another class that had a list of `patrons`, could we `mixin` this module?

-------

If you're looking for some additional challenges, take a look at the `spicy_challenge` directory! The `README` found within will give you a rundown of what you need to do!

-------
### Check for Understanding
At the end of this review, students should be able to answer the following questions:

1. How does utilizing `modules` and `mixins` allow developers to keep their code `DRY`?
2. Why do we want to keep our code `DRY`?
3. What sort of functionality can be `mixed in` to a class via a `module`?
