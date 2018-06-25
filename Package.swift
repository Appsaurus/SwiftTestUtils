// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "SwiftTestUtils",
	products: [
		.library(name: "SwiftTestUtils", targets: ["SwiftTestUtils"])
	],
	dependencies: [],
	targets: [
		.target(name: "SwiftTestUtils", dependencies: [], path: "Sources/Shared"),
		.testTarget(name: "SwiftTestUtilsTests", dependencies: ["SwiftTestUtils"], path: "SwiftTestUtilsTests/Shared")
	]
)
