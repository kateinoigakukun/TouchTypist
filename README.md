# SwiftTypeInjector

## Installation

TODO

## Build

```bash
swift build
```

## Usage

### Rewrite single file

```bash
swiftc -frontend -dump-ast sourcefile.swift > sourcefile.swift.ast
./.build/debug/stir rewrite sourcefile.swift.ast
```

```diff
- [1, 2, 3].map { i in
+ [1, 2, 3].map { (i: Int) -> String in
    return i.description
}
```

### Rewrite Xcode projects

Set User-Defined build setting, `SWIFT_EXEC` with `./.build/debug/stir-xcode-wrapper`.

![](./resources/configuration.gif)
