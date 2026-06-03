# Changelog

## 0.3.0 - 2026-06-08
### Added
- New argument `information-extra`: Additional content for the information box (only used if `information` is `auto`). This content is displayed after the sender and can be used, for example, to show a phone number or email address. ([27f286c](https://github.com/tndrle/briefs/commit/27f286c16fb3371185febc11752e525ad55369ec))

### Changed
- Changed the default value of `sender-separator` and `location-date-separator` from `", "` (type `string`) to `[, ]` (type `content`).
- Improved the documentation (in particular, added `none` to possible values of the `date` argument).

## 0.2.0 - 2025-12-14
### Added
- The position and size of the address box as well as the top margin of the recipient inside the address box are now adjustable. See arguments `address-box` and `recipient-top-margin`. ([6938456](https://github.com/tndrle/briefs/commit/6938456df7fc5717753fdc12690352069f1d8e17))

### Changed
- **Breaking:** The folding marks and hole punch marks are now customizable. The argument `hole-punch-mark` has been renamed to `hole-punch-marks` (with a trailing "s"). Also, the arguments `folding-marks` and `hole-punch-marks` are no longer boolean but can be `none` or a `dictionary`. ([66fd085](https://github.com/tndrle/briefs/commit/66fd085a24da9264e82be9ef84f8f3a39092ce84))

## 0.1.0 - 2025-11-17
Initial release
