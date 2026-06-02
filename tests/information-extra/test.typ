#import "/src/lib.typ": letter

#show: letter.with(
  sender: ([Max Mustermann], [Musterstraße 7], [12345 Musterstadt]),
  recipient: [Erika Musterfrau\ Musterweg 13\ 54321 Musterhausen],
  information-extra: [
    \
    Tel.: 01234 567891011\
    E-Mail: info\@example.com
  ]
)

#lorem(50)
