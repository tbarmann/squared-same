# Squared Same

Given two arrays `a` and `b` write a function `squaredSame(a, b)` that checks whether the two
arrays have the "same" elements, with the same multiplicities. "Same" here means that
the elements in `b` are the elements in `a` squared, regardless of order.

    a = [2, 4]
    b = [4, 16]
    squaredSame(a, b) => true

### Examples

Valid arrays

    a = [121, 144, 19, 161, 19, 144, 19, 11]
    b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]

`squaredSame(a, b)` returns true because in b 121 is the square of 11, 14641 is the
square of 121, 20736 the square of 144, 361 the square of 19, 25921 the square of 161,
and so on. It gets obvious if we write b's elements in terms of squares:

    a = [121, 144, 19, 161, 19, 144, 19, 11]
    b = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]

Invalid arrays

If we change the first number to something else, `squaredSame` may not return true anymore:

    a = [121, 144, 19, 161, 19, 144, 19, 11]
    b = [132, 14641, 20736, 361, 25921, 361, 20736, 361]

`squaredSame(a,b)` returns false because in b 132 is not the square of any number of a.

    a = [121, 144, 19, 161, 19, 144, 19, 11]
    b = [121, 14641, 20736, 36100, 25921, 361, 20736, 361]

`squaredSame(a,b)` returns false because in b 36100 is not the square of any number of a.

### Notes

Either `a` or `b` might be an empty array or `nil` (or `null` or `None` depending on the given language).

If `a` or `b` are `nil`, the problem doesn't make sense so return `false`.

If `a` or `b` are empty the result is self-evident.


## Language and test case support

Test cases for this challenge are not assumed to be fully complete.  Meaning, the full test
suite I will run against your code will include more tests and variations of tests.  The
tests provided are meant as a starting point and example.  You are free to add your own tests as well

Test cases (or pseudo-test cases) have been provided below for the following languages:

  * [Clojure](./squared_same_test.clj)
  * [Ruby](./squared_same_test.rb)
  * [JavaScript](./squared_same_test.js)
  * [Python](./squared_same_test.py)
  * [Haskell](./squared_same_test.hs)
  * [Go](./squared_same_test.go)
  * [Rust](./squared_same_test.rs)

### Solution submission

You are welcomed and encouraged to try to implement a solution in one or more languages.
To submit a solution, send me a link to a gist with your code at [craig@mojotech.com](mailto:craig@mojotech.com?subject=squared-same)
with a subject line of `squared-same`.
