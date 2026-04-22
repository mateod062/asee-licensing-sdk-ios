// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ASEELicensingSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "ASEELicenseValidationSDK",
            targets: ["ASEELicenseValidationSDK", "ASEELicenseValidationSDKSources"]
        ),
        .library(
            name: "ASEELicenseGenerationSDK",
            targets: ["ASEELicenseGenerationSDK", "ASEELicenseGenerationSDKSources"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/mateod062/asee-authentication-base-ios-sdk.git",
            from: "1.0.0"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "ASEELicenseValidationSDK",
            url: "https://github.com/mateod062/asee-licensing-sdk-ios/releases/download/v1.0.0/ASEELicenseValidationSDK.xcframework.zip",
            checksum: "30b61b11aac543c27649727bdf4ee05b1cafd61733b0e48a83529b4f9e0a7b5a"
        ),
        .binaryTarget(
            name: "ASEELicenseGenerationSDK",
            url: "https://github.com/mateod062/asee-licensing-sdk-ios/releases/download/v1.0.0/ASEELicenseGenerationSDK.xcframework.zip",
            checksum: "9fdb6a0f3fe2882a4891c478dc23f93bb917904f1674370b6d98a23c77c13ed9"
        ),
        .target(
            name: "ASEELicenseValidationSDKSources",
            dependencies: [
                .product(name: "ASEEAuthenticationBaseSDKPackage", package: "asee-authentication-base-ios-sdk"),
            ],
            path: "Sources/ASEELicenseValidationSDK"
        ),
        .target(
            name: "ASEELicenseGenerationSDKSources",
            dependencies: [
                .product(name: "ASEEAuthenticationBaseSDKPackage", package: "asee-authentication-base-ios-sdk"),
            ],
            path: "Sources/ASEELicenseGenerationSDK"
        ),
    ]
)
