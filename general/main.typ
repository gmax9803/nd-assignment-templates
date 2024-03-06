/*
* This template was created by Max (gmax9803)
* Updated: 02/06/2024
*/

/* [SETTINGS] */
/* See [utils.typ] for all other settings */
#import "utils.typ": * // import everything from utils.typ `from utils import *`
#set page(paper: "us-letter", header: hdr, footer: ftr) // Page Data
#misc_settings
#init_header  // initial header (name, due date, etc.)
#oline(probnum)        // outline

/* [END OF SETTINGS] */

/* [BEGIN PROBLEM SET] */

#problem() // PROBLEM 1
#subprob() // (1a)

#proof(b: true)[ // border: true
  You can do proofs like this. In this case it will be prefixed by a "proof:" header and ended with a QED automatically. It will also be padded and centered.\
  Usage:
  ```
    #proof(b: true)[
      content
    ]
  ```
]

#subprob() // (1b)
#proof()[  // No border
  Or you can do proofs like this - without a visible box.\
  ```
    #proof()[
      content
    ]
  ```
]

#cbox()[ // no border
  Or, if you're not writing a proof and just want to keep the formatting, you can do this. (It's a box without proof or a border)
  ```
    #cbox()[
      content
    ]
  ```
]

#cbox(b: true)[ // border: true
  Or you can do the same thing with a border.
  ```
    #cbox(b: true)[ 
      content 
    ]
  ```
]


#problem() // PROBLEM 2
#subprob() // (2a) 
Or you can do proofs with custome formatting and just append a QED, using `#qed`.

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