# swiftui-memory-bug

Demonstrating a memory issue with SwiftUI

Run Swift Preview with Activity Monitor open.

1. Line 22 leave commented out. Memory Usage seems fine.
2. Uncomment Line 22. swift-frontend memory grows inexorably into the 10's of GBs

`.aspectRatio(0.75, contentMode: .fit)`
