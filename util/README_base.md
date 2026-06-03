# 🩲 Briefs

Briefs is a simple [Typst](https://typst.app/) template for letters (German: Briefe).
It is inspired by [DIN 5008](https://de.wikipedia.org/wiki/DIN_5008) and targets A4 paper.
The address box aligns with the window of a
[DIN lang](https://de.wikipedia.org/wiki/DIN_lang) envelope.

## Example
[CODE:example:An example letter generated with briefs:tests/example/test.typ]

Additional examples can be found in the
[`tests`](https://github.com/tndrle/briefs/tree/v[VERSION]/tests) directory.

## Reference
### Document Structure
The image below shows the basic document structure. The address box contains
sender and recipient.
The information box contains supplementary information.
By default, it displays the sender, content in `information-extra`,
location, and date.
[IMG:structure:The basic document structure of letter generated with briefs:tests/structure/test.typ]

### API
```typst
letter(
[ARGUMENTS]
)
```

**Arguments**

[ARGUMENTS_DOC]
