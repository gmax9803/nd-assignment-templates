#let ddata = (
  hw_num:   "##",         // int, insert HW number (i.e. for HW1 -> 01)
  due_date: datetime(year: 2024, month: 4, day: 5), // Due Date
  author:   "First Last", // Author fullname
  net_id:   "netid",      // Your netid (i.e. mgraves4)
  outline:  false,        // Print table of contents? (true | false)
  slug:     "toc",        // Class slug, toc = theory of computing
  cname:    "Theory of Computing", // Full class name
  atype:    "hw"          // assignment type: hw, ps (problem set), etc
)

#let misc_settings = {
}

#let season = {
  if ddata.due_date.month() >= 8 [fa] 
  if ddata.due_date.month() <= 5 [sp] 
}

#let yy   = ddata.due_date.display("[year repr:last_two]")
#let nid  = smallcaps(ddata.net_id)

#let qed = [#align(right)[*QED*]]
#let probnum = counter("problem") // counter for problem number

#set heading(numbering: (it) => [
  #smallcaps(it)
])

#let problem(t: none) = {
  probnum.step(level: 1)
  locate(loc => { if probnum.at(loc).at(0) != 1 { pagebreak() } }) // pagebreak if not first problem
  heading(level: 1, bookmarked: false, numbering: (i) => [  
    #smallcaps("problem " + [#i])
  ], t)
}

#let subprob(s: "", t: none) = {
  if s != "" [(#probnum.display()#s)]
  else {
    probnum.step(level: 2)
    heading(level: 2, bookmarked: false, numbering: "(1a)", t)
  }
}

#let hdr = [#smallcaps(align(right)[ nd#yy#season\-#ddata.slug\-#ddata.atype#ddata.hw_num])]
#let ftr = [ #align(right)[#nid - page #counter(page).display("1/1", both: true) ] ] 

#let init_header = [
  #ddata.author (#nid)\
  Due: #ddata.at("due_date").display("[month]/[day]/[year]") \
]

#let oline(p) = {
  line(length: 100%, stroke: .5pt)
  if ddata.outline {
    outline(title: [Outline], depth: 2,
      target: heading,
      indent: auto
    )
    line(length: 100%, stroke: .5pt)
    [\ ]
  }
}

#let cbox(content, b: false) = align(center, box(
    stroke: {
      if b {.5pt}
      else {0pt}
    },
    width: 97%,
    inset:  8pt,
    {
      align(left, content)
    }
))

/**** #proof() ****/
#let proof(content, b: false) = {
  cbox(b: b, {
      [*_proof:_*\ ]
      [#content]
      qed
  })
}
