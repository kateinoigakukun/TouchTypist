# TouchTypist

## Installation

```bash
$ brew tap kateinoigakukun/touchtypist https://github.com/kateinoigakukun/touchtypist
$ brew install touchtypist
```

## Usage

### Rewrite single file

```bash
$ swiftc -frontend -dump-ast sourcefile.swift > sourcefile.swift.ast
$ touchtypist rewrite sourcefile.swift.ast
```

```diff
- let value = 1
+ let value: Int = 1


- [1, 2, 3].map { i in
+ [1, 2, 3].map { (i: Int) -> String in
    return i.description
}
```

### Rewrite Xcode projects

Set User-Defined build setting, `SWIFT_EXEC` with `touchtypist-xcode-wrapper` and run building.

![](./resources/configuration.gif)
