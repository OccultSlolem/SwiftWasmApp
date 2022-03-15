// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "SwiftWasmApp",
    platforms: [.macOS(.v11)],
    products: [
        .executable(name: "SwiftWasmApp", targets: ["SwiftWasmApp"])
    ],
    dependencies: [
        .package(name: "Tokamak", url: "https://github.com/TokamakUI/Tokamak", from: "0.9.1")
    ],
    targets: [
        .target(
            name: "SwiftWasmApp",
            dependencies: [
                .product(name: "TokamakShim", package: "Tokamak")
            ]),
        .testTarget(
            name: "SwiftWasmAppTests",
            dependencies: ["SwiftWasmApp"]),
    ]
)