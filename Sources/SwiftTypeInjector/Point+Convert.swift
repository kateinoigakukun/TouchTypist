import SwiftSyntax
import TypeCheckedAST

extension Point {
    init(position: AbsolutePosition) {
        self.init(fileName: nil, line: position.line, column: position.column)
    }
}
