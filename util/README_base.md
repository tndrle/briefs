# 🩲 Briefs

Briefs is a simple [Typst](https://typst.app/) template for letters (German: Briefe).
It is inspired by [DIN 5008](https://de.wikipedia.org/wiki/DIN_5008) and targets A4 paper.
The address box fits the window of a
[DIN lang](https://de.wikipedia.org/wiki/DIN_lang) envelope.

## Example
[CODE:example:tests/example/test.typ]

For more examples check out the folder
[`tests`](https://github.com/tndrle/briefs/tree/main/tests).

## Reference
### Document Structure
The image below shows the basic document structure. The address box contains
sender and recipient.
The information box contains additional information. The default is the
sender, any content in `information-extra`, the location, and the date.
[IMG:structure:tests/structure/test.typ]

### API
```typst
letter(
[ARGUMENTS]
)
```

**Arguments**

[ARGUMENTS_DOC]
