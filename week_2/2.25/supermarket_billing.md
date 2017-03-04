# Supermarket billing

A supermarket billing system will take a sequence of barcodes such as

`[1234,4719,3814,1112,1113,1234]`

into a printed bill of the form

```
         Erlang Stores

Dry Sherry, 1lt...........5.40
Fish Fingers..............1.21
Orange Jelly..............0.56
Hula Hoops (Giant)........1.33
Unknown Item..............0.00
Dry Sherry, 1lt...........5.40

Total....................13.90
```

using the data in a simple database such as

```
[  (4719, "Fish Fingers" , 121),
    (5643, "Nappies" , 1010),
    (3814, "Orange Jelly", 56),
    (1111, "Hula Hoops", 21),
    (1112, "Hula Hoops (Giant)", 133),
    (1234, "Dry Sherry, 1lt", 540)]
```

The aim of this exercise is to define the function that will produce the bill from a list of barcodes and the database. You’ll need to think about how to structure the solution by defining the right set of auxiliary functions to help you to divide and conquer the problem.

To take the problem further you might like to add these features:

* You are asked to add a discount for multiple buys of sherry: for every two bottles bought, there is a £1.00 discount.
* Design functions which update the database of bar codes. You will need a function to add new information while removing any entry for the same bar code.
* Re-design your system so that bar codes which do not appear in the database (e.g. 1113 in the example) give no entry in the final bill.
