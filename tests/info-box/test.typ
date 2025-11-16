#import "/src/lib.typ": letter

#show: letter.with(
  sender: ([Max Mustermann], [Musterstraße 7], [12345 Musterstadt]),
  recipient: [Erika Musterfrau\ Musterweg 13\ 54321 Musterhausen],
  information-box: (0mm, 0mm, 0mm, 0mm),
  information: [Custom content],
)
