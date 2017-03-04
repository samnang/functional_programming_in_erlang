# Text processing

In word processing systems it is customary for lines to be filled and broken automatically, to enhance the appearance of the text. Input of the form

```
The heat bloomed                  in December
 as the      carnival  season
                 kicked into gear.
Nearly helpless with sun and glare, I avoided Rio's brilliant
sidewalks
 and glittering beaches,
panting in dark     corners
  and waiting out the inverted southern summer.
```

would be transformed by filling to

```
The heat bloomed in December as the
carnival season kicked into gear.
Nearly helpless with sun and glare,
I avoided Rio's brilliant sidewalks
and glittering beaches, panting in
dark corners and waiting out the
inverted southern summer.
```

Define a function that takes an input file in Erlang as a string (list) of characters. and a line length len (a positive integer) and which returns a list of lines, each of which is filled to include the maximum number of words up to the overall length len (including punctuation characters).

You should think about how best to represent lines in solving this problem: is a string the best representation or is there a better alternative? To take the problem further you might like to try the following.

To align the right-hand margin, the text is justified by adding extra inter-word spaces on all lines but the last:

```
 The heat bloomed in December as the
 carnival  season  kicked into gear.
 Nearly helpless with sun and glare,
 I avoided Rio's brilliant sidewalks
 and glittering beaches, panting  in
 dark  corners  and  waiting out the
 inverted southern summer.
```

We’ve so far just provided one sort of layout. It would be possible to add formatting commands of the form .XX on a line on their own. Commands could include

* .VB for verbatim (so no formatting, just copy lines from input to output,
* .CV lines are copied from input to output but also each line is centred (if possible),
* .LP for lines filled and aligned to the left,
* .RP for lines filled and aligned to the right, and
* .JU for lines filled and justified.
