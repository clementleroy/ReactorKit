// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "ReactorKit",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: "ReactorKit", targets: ["ReactorKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "5.0.0")),
        .package(url: "https://github.com/ReactorKit/WeakMapTable.git", .upToNextMajor(from: "1.1.0")),
        .package(url: "https://github.com/devxoul/RxExpect.git", .upToNextMajor(from: "2.0.0"))
    ],
    targets: [
        .target(name: "ReactorKit", dependencies: ["ReactorKitRuntime", "RxSwift", "WeakMapTable"]),
        .target(name: "ReactorKitRuntime", dependencies: []),
        .testTarget(name: "ReactorKitTests", dependencies: ["ReactorKit", "RxExpect"]),
    ],
    swiftLanguageVersions: [.v5]
)
