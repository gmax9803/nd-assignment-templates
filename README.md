# ND Assignment Templates
In `general/` you can find the general dynamic [typst](https://typst.app) template I've created and used for most of my assignments.

For the most up-to-date and easy way to download it, you can follow this link [here](https://typst.app/project/rMbq_AyCwbEcPnz6IrXDtQ).

## Some notes for usage:
- When you first use it/download it, go to `utils.typ` and personalize the dictionary information at the top.
  It will look something like the following. Everything is dynamically updated from `utils.typ`, so if something is not updating like you might want it to, you need to change a setting.
  ```js
  #let ddata = (
    hw_num:   "##",         // int, insert HW number (i.e. for HW1 -> 01)
    due_date: datetime(year: 2024, month: 4, day: 5), // Due Date
    author:   "First Last", // Author fullname
    net_id:   "netid",      // Your netid (i.e. jshmoe2)
    outline:  false,        // Print table of contents? (true | false)... table of contents not working right now..
    slug:     "toc",        // Class slug, toc = theory of computing
    cname:    "Theory of Computing", // Full class name
    atype:    "hw"          // assignment type: hw, ps (problem set), etc
  )
  ```
- Every iteration of `#problem()` keeps track of the problem numbering.
  - Likewise with `#subprob()`, but you can provide a custom lettering like this should you prefer: `#subprob("a")`. 
- See custom functions below.

## Some custom functions:
- `#proof()[]`
  ```
  #proof(b: true)[
    This will make a proof box with a border. Prefixed with "proof:" and suffixed with QED.
    If you dont want a border, simply omit the 'b: true' -> proof()[content].
  ]
  ```
- `#cbox()[]`
    ```
  #cbox(b: true)[
    Works exactly the same as '#proof', just doesn't have the proof items.
  ]
  ```
- `#qed`
  Appends a QED to the end, right aligned.

## Screenshot
![image](https://github.com/gmax9803/nd-assignment-templates/assets/27639180/8b055ce0-91a7-4dda-8e99-ee1e67551656)
