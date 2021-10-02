# swiftui-memory-bug

Demonstrating a memory issue with SwiftUI

Run Swift Preview with Activity Monitor open.

1. Line 23 leave commented out. Memory Usage seems fine.
2. Uncomment Line 23. swift-frontend memory grows inexorably into the 10's of GBs

`.aspectRatio(0.75, contentMode: .fit)`


Unfortunately I don't think this bug is just limited to the above aspectRatio view modifier and seems to be a bigger issue with GeometryReader in general
