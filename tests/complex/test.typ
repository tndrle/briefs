#import "/src/lib.typ": letter

#set par(justify: true)
#let city = [Musterstadt]
#show: letter.with(
  sender: ([Musterfirma GmbH], [Musterstraße 7], [12345 #city]),
  sender-font-size: 8.5pt,
  sender-separator: [ $dot.op$ ],
  recipient: [Musterbank\ Musterweg 13\ 54321 Musterhausen],
  recipient-top-margin: 5mm,
  location: city,
  location-date-separator: " im ",
  date: "November 2025",
  margin: 1cm,
  number-align: bottom + left,
  numbering: (i, t) => text(9pt)[Seite #i von #t Seiten],
  subject: [*Darlehensvertrag Nr. A3 4872 U27634 -- Wertermittlungkosten*],
  hole-punch-mark: false,
  background: rotate(
    -40deg, text(120pt, red.transparentize(80%))[*DRAFT*]
  ),
)
#place(top + left, { v(-1em); text(50pt)[#emoji.briefs] })

#lorem(700)
