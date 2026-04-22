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
            checksum: "0433f628a98e521c6c66c7cc334aa631c7b51be9740b0605b1c019bb3051b9e0"
        ),
        .binaryTarget(
            name: "ASEELicenseGenerationSDK",
            url: "https://github.com/mateod062/asee-licensing-sdk-ios/releases/download/v1.0.0/ASEELicenseGenerationSDK.xcframework.zip",
            checksum: "7c5f35f18e2d21a24725993a769d204cdbbad923e709e9e25280f2f6ad42557b"
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
