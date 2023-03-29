// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Assistant",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_13)
    ],
    products: [
        .library(
            name: "Assistant",
            targets: [
                "Assistant"
            ]
        )
    ],
    dependencies: [
        // Empty.
    ],
    targets: [
        .target(
            name: "Assistant",
            dependencies: [
                // Empty.
            ]
        )
    ]
)
