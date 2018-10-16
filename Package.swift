// swift-tools-version:4.0
import PackageDescription

let package = Package(
  name: "rswift",
  dependencies: [
    .package(url: "https://github.com/kylef/Commander.git", .upToNextMinor(from: "0.6.0")),
    .package(url: "https://github.com/tomlokhorst/XcodeEdit", .revision("f9ce2c414f69bd3d309938b75dd0c4af7a815dbe"))
  ],
  targets: [
    .target(
      name: "rswift",
      dependencies: ["RswiftCore"]
    ),
    .target(
      name: "RswiftCore",
      dependencies: ["Commander", "XcodeEdit"]
    ),
    .testTarget(name: "RswiftCoreTests", dependencies: ["RswiftCore"]),
  ],
  swiftLanguageVersions: [4]
)
