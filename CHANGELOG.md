<!--

// Please add your own contribution below inside the Master section, no need to
// set a version number, that happens during a deploy. Thanks!
//
// These docs are aimed at users rather than danger developers, so please limit technical
// terminology in here.

// Note: if this is your first PR, you'll need to add your URL to the footnotes
//       see the bottom of this file

-->

## Master

* Danger Swift can request the DSL from Danger JS under the hood, and listens async for STDIN - [@orta][]
*Add --help option support to danger-swift [#122](https://github.com/danger/danger-swift/pull/122) by [@f-meloni][]

## 0.7.1

*Move report logic on a separate file [#111](https://github.com/danger/danger-swift/pull/111) by [@f-meloni][]

## 0.7.0

* Suggestions support [#110](https://github.com/danger/danger-swift/pull/110) by [@f-meloni][]
* Separate the Danger library from the Runner [#109](https://github.com/danger/danger-swift/pull/109) by [@f-meloni][]
* Use danger-command for calls instead of danger command [#105](https://github.com/danger/danger-swift/pull/105) by [@f-meloni][]

## 0.6.0

* --dangerfile argument support [#100](https://github.com/danger/danger-swift/pull/100) by [@f-meloni][]
* Add Github API client [#95](https://github.com/danger/danger-swift/pull/95) by [@f-meloni][]
* Improve danger-swift edit [#94](https://github.com/danger/danger-swift/pull/94) by [@f-meloni][]
* When working on danger, you cna now use `swift run danger-swift xx` to try commands - [@orta][]

## 0.5.1

* Ability to import files on the Dangerfile [#93](https://github.com/danger/danger-swift/pull/93) by [@f-meloni][]
* Added Shellout files on the Makefile [#91](https://github.com/danger/danger-swift/pull/91) by [@f-meloni][]
* Restored danger-swift edit functionality - [#90](https://github.com/danger/danger-swift/pull/90) by [@f-meloni][]
* Expose Danger report results - [#89](https://github.com/danger/danger-swift/pull/89) by [@f-meloni][]

- Adds three new commands: 
    - `danger-swift ci` - handles running Danger
    - `danger-swift pr [https://github.com/Moya/Harvey/pull/23]` - Let's you run Danger against a PR for local dev
    - `danger-swift local - Let's you run Danger against the diff from your branch to master

* Prepares for Danger JS 5.0 - [#84](https://github.com/danger/danger-swift/pull/84) by [@orta][]

## 0.4.1

* Use CaseIterable to take advantage of compiler-generated `allCases` in enum by [yhkaplan](https://github.com/yhkaplan) (requires Swift 4.2)

## 0.4.0

* Change modifiedFiles, createdFiles, deletedFiles to be of type `File`, adding Name and FileType properties - [#81](https://github.com/danger/danger-swift/pull/81) by [yhkaplan](https://github.com/yhkaplan)
* Remove Sourcery-based code generation in favor of Swift 4.1's native Equatable conformance generation - [#78](https://github.com/danger/danger-swift/pull/78) by [yhkaplan](https://github.com/yhkaplan)
* [BitbucketServer] Make description, commiter and committerTimestamp optional. [#79](https://github.com/danger/danger-swift/pull/79) by [@acecilia](https://github.com/acecilia)
* [Github] Make repository description optional. [#73](https://github.com/danger/danger-swift/pull/73) by [@hiragram](https://github.com/hiragram)
* [Github] Make commit author and committer optional. [#75](https://github.com/danger/danger-swift/pull/75) by [@Sega-Zero](https://github.com/Sega-Zero)

## 0.4.0

* Add Support for Bitbucket Server - thomasraith

## 0.3.6

* Add Swift 4.1 support - sunshinejr

## 0.3.5

* DSL improvments - yhkaplan
* You can now `warn`, `fail`, `message` and `markdown` - sunshinejr

## 0.3.4

* Reordering how Runner args are routed to Danger - rockbruno

## 0.3.3

* Fixes for the CLI arg order from danger-js - sunshinejr

## 0.3.2

* Add milestone model to issue and pull request. - d-date
* Change date string type from `String` to `Date` using `iso8601` date decoding strategy. - d-date
* Adds the `Logger` struct together with the `--verbose` and `--silent` arguments - rockbruno
* Add support for GitHub's new review requests payload. - hirad

## 0.3.1

* Adds linker flag to link against Marathon dependencies. See https://github.com/JohnSundell/Marathon/pull/153. - ashfurrow

## 0.3.0

* Supports the command: `danger-swift edit` to generate an Xcodeproj which you can edit your Dangerfile in - [@orta][]
* Adds plugin infrastructure to `danger-swift` - [@orta][]

  There aren't any plugins yet, but there is infrastructure for them. By suffixing `package: [url]` to any import, you
  can directly import Swift PM package as a dependency, which is basically how plugins will work.

  So, one of these days:

  ```swift
  import SwiftLint // package: https://github.com/danger/DangerSwiftLint.git

  SwiftLint.lint(danger)
  ```

## 0.2.0

* Support the beta formatting of the JSON DSL ( it now is `{ "danger": { [DSL] }}`, instead of a root element) - [@orta][]

## 0.1.1

* Fix install paths for libDanger when using homebrew - [@orta][]

## 0.1.0

* First release via homebrew - eneko

## 0.0.2

* Supports a Dangerfile in both: "/Dangerfile.swift", "/danger/Dangerfile.swift" or "/Danger/Dangerfile.swift" to handle
  SPM rules on Swift files in the root - [@orta][]
* Adds a CHANGELOG, renames project to danger-swift - [@orta][]

## 0.0.1

* Initialish versions - [@orta][], SD10


[@f-meloni]: https://github.com/f-meloni
[@orta]: https://github.com/orta
