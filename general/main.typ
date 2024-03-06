/*
* This template was created by Max (gmax9803)
* Updated: 02/05/2024
*/

/* [SETTINGS] */
/* See [utils.typ] for all other settings */
#import "utils.typ": *

#set page(paper: "us-letter", 
  header: hdr,
  footer: [ #align(right)[ #nid - page #counter(page).display("1/1", both: true) ] ] 
) // Page Data

#init_header  // initial header (name, due date, etc.)
#oline        // outline

/* [END OF SETTINGS] */

/* [BEGIN PROBLEM SET] */

#problem() // PROBLEM 1
#subprob()
#proof(b: true)[
  You can do proofs like this. In this case it will be prefixed by a "proof:" header and ended with a QED automatically. It will also be padded.
]


#subprob()
#proof()[
  Or you can do proofs like this. Without a visible box, It's up to you.
]

#cbox()[
  or if you just like the padding, you can do this :) by using `cbox()[content]`. It also takes a `b: true|false` argument if you would like a border.
]

#cbox(b: true)[
  `#cbox(b: true)[ content ]`
]


#problem() // PROBLEM 2
#subprob() // (2a) 
Or you can do proofs manually with a manual QED, using `#qed`.

#qed

#subprob() // (2b)
All problems are placed on their own separate page by default. Subproblems are not.

#qed


#problem() // PROBLEM 3
#subprob() // (3a)
Problem 3a goes here

#qed

#subprob() // (3b)
Problem 3b goes here

#qed

/* [END PROBLEM SET] */