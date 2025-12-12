#import "/src/lib.typ": letter

#set text(font: "TeX Gyre Heros")
#show: letter.with(
  sender: (
    [Sender], [Sender], [Sender], [Sender], [Sender], [Sender],
    [Sender], [Sender], [Sender], [Sender], [Sender], [Sender]
  ),
  recipient: [
    Recipient Recipient Recipient Recipient Recipient Reci
    Recipient Recipient Recipient Recipient Recipient
  ],
  address-box: (20mm, 60mm, 100mm, 40mm),
  subject: [*Subject*],
  information: [Information],
  show-boxes: true,
)

Body
