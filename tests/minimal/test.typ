#import "/src/lib.typ": letter

#show: letter.with(
  sender: ([Max Mustermann], [Musterstraße 7], [12345 Musterstadt]),
  recipient: [Erika Musterfrau\ Musterweg 13\ 54321 Musterhausen],
)

#lorem(50)
