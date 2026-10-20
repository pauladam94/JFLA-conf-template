# JFLA-conf-template

Typst template for the JFLA (journées français des languages applicatifs) conference.

This package has not (yet) been published to Typst Universe. So to use it you have to copy paste the `jfla.typ` file.

We present here a minimal example that compiles with a Typst compiler.
You can copy paste it and began from here.

```
#import "@preview/jfla-template:1.0.0": (
  jfla-template
)
#show: jfla-template.with(
  title: [The title of the article],
  authors: (
    (
      name: "Firstname Surname",
      running-name: "Firstname S.",
      affiliation: "ENS Rennes, Rennes, 35000, France",
    ),
    (
      name: "SecondAuthorName Withonename Andasecond",
      running-name: "SecondAuthorName W. A.",
      affiliation: ("INRIA Paris, France", "IRIF, Université Paris Cité, France",),
    ),
  ),
  abstract: [
    Here is a small abstract to test the template. You can write the
    short resume of what your article does here.
  ],
  jfla-numbering: 38,
  // Here you can pass in review mode when submitting
  review-mode: false,
  // Here you can change the language to "en" or "fr"
  lang: "en",
)

= Introduction <section:introduction>

#lorem(300)

= Related Work

In the @section:introduction we talked about the problem at hand.
#lorem(1000)

= Important Section

#lorem(2000)
#figure(
  box(width: 200pt, height: 100pt, stroke: 1pt),
  caption: [Some very pretty empty black box]    
)

= Other Important Section

#definition[
  Here I define something very important for the theorem I will expose next.
]

#theorem[
  A beautiful theorem that will be very easy to proove in an elegant way.
]

#proof[
  A very hard long and difficult proof that is wrong for a very specific and
  weird reason. #lorem(200).
]

#lorem(1000)

= Conclusion and Future work

#lorem(300)


// Here we assume that the bibliography is present in the file "bib.bib"
// and in the same directory as this file
#bibliography("bib.bib")
```
