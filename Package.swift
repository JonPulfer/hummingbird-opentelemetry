// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "hummingbird-opentelemetry",
	platforms: [.macOS(.v14), .iOS(.v17), .tvOS(.v17)],
	products: [
		// Products define the executables and libraries a package produces, making them visible to other packages.
		.library(
			name: "hummingbird-opentelemetry",
			targets: ["hummingbird-opentelemetry"]),
	],
	dependencies: [
		.package(url: "https://github.com/open-telemetry/opentelemetry-swift", from: "1.0.0"),
		.package(url: "https://github.com/grpc/grpc-swift.git", from: "1.0.0"),
		.package(url: "https://github.com/apple/swift-protobuf.git", from: "1.20.2"),
		.package(url: "https://github.com/apple/swift-log.git", from: "1.4.4"),
		.package(url: "https://github.com/apple/swift-metrics.git", from: "2.1.1"),
		.package(url: "https://github.com/hummingbird-project/hummingbird.git", from: "2.0.0"),
	],
	targets: [
		// Targets are the basic building blocks of a package, defining a module or a test suite.
		// Targets can depend on other targets in this package and products from dependencies.
		.target(
			name: "hummingbird-opentelemetry",
			dependencies: [
				.product(name: "OpenTelemetrySdk", package: "opentelemetry-swift"),
				.product(name: "OpenTelemetryApi", package: "opentelemetry-swift"),
				.product(name: "OpenTelemetryProtocolExporter", package: "opentelemetry-swift"),
				.product(name: "Hummingbird", package: "hummingbird"),
			]
		),
		.testTarget(
			name: "hummingbird-opentelemetryTests",
			dependencies: ["hummingbird-opentelemetry"]),
	])
