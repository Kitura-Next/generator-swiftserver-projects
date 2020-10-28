// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "Generator-Swiftserver-Projects",
    dependencies: [
      .package(url: "https://github.com/Kitura-Next/Kitura.git", .upToNextMinor(from: "2.8.0")),
      .package(url: "https://github.com/Kitura-Next/HeliumLogger.git", from: "1.7.1"),
      .package(url: "https://github.com/Kitura-Next/CloudEnvironment.git", from: "9.0.0"),
      .package(url: "https://github.com/RuntimeTools/SwiftMetrics.git", from: "2.0.0"),
      .package(url: "https://github.com/Kitura-Next/Kitura-OpenAPI.git", from: "1.0.0"),
      .package(url: "https://github.com/Kitura-Next/Health.git", from: "1.0.0"),
    ],
    targets: [
      .target(name: "Generator-Swiftserver-Projects", dependencies: [ .target(name: "Application") ]),
      .target(name: "Application", dependencies: [ "Kitura", "HeliumLogger", "CloudEnvironment","SwiftMetrics", "KituraOpenAPI", "Health", 

      ]),

      .testTarget(name: "ApplicationTests" , dependencies: [.target(name: "Application"), "Kitura", "HeliumLogger" ])
    ]
)
