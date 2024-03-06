#let ddata = (
  hw_num:   "##",         // int, insert HW number (i.e. for HW1 -> 01)
  due_date: datetime(year: 2024, month: 4, day: 5), // Due Date
  author:   "First Last", // Author fullname
  net_id:   "netid",      // Your netid (i.e. mgraves4)
  outline:  false,        // Print table of contents? (true | false)... table of contents not working right now..
  slug:     "toc",        // Class slug, toc = theory of computing
  cname:    "Theory of Computing", // Full class name
  atype:    "hw"          // assignment type: hw, ps (problem set), etc
)

#let season = {
  if ddata.due_date.month() >= 8 [fa] 
  if ddata.due_date.month() <= 5 [sp] 
}

#let yy   = ddata.due_date.display("[year repr:last_two]")
#let nid  = smallcaps(ddata.net_id)

#let qed = [ #align(right)[*QED* $qed$] ]

#let probnum = counter(heading) // counter for problem number

#let problem() = {
  probnum.step()
  locate(loc => { if probnum.at(loc).at(0) != 1 { pagebreak() } }) // pagebreak if not first problem
  [= #smallcaps("problem") #smallcaps(probnum.display())]
}

#let subprob(s: "") = {
  if s != "" [(#probnum.display()#s)]
  else {
    probnum.step(level: 2)
    [== (#probnum.display("1a"))]
  }
}

#let hdr = [#smallcaps(align(right)[ nd#yy#season\-#ddata.slug\-#ddata.atype#ddata.hw_num])]

#let init_header = [
  #ddata.author (#nid)\
  Due: #ddata.at("due_date").display("[month]/[day]/[year]") \
]

#let oline = {
  line(length: 100%, stroke: .5pt)
  if ddata.outline {
    outline(title: "Outline", depth: 2)
    line(length: 100%, stroke: .5pt)
    [\ ]
  }
}

#let cbox(content, b: false) = align(center, box(
    stroke: {
      if b {.5pt}
      else {0pt}
    },
    width: 95%,
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
