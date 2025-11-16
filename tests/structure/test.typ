#import "/src/lib.typ": letter

#set text(font: "TeX Gyre Heros")
#show: letter.with(
  sender: ([Sender],),
  recipient: [Recipient],
  subject: [*Subject*],
  information: [Information],
  show-boxes: true,
)

Body
