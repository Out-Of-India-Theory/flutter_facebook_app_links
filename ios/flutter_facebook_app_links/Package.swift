// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "flutter_facebook_app_links",
    platforms: [.iOS("13.0")],
    products: [
        .library(name: "flutter-facebook-app-links", targets: ["flutter_facebook_app_links"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
        // Must overlap facebook_app_events' range or SPM can't resolve a single FB SDK.
        .package(url: "https://github.com/facebook/facebook-ios-sdk.git", "18.0.0"..<"19.0.0"),
    ],
    targets: [
        .target(
            name: "flutter_facebook_app_links",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                .product(name: "FacebookCore", package: "facebook-ios-sdk"),
            ]
        )
    ]
)
