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
            url: "ssh://git@git.asseco-see.hr:2022/all-projects/asseco-see-hrvatska/security-and-compliance/products/mobile-development/ios.assecolib.authenticationbasesdk.package.git",
            branch: "mdokic-WIP"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "ASEELicenseValidationSDK",
            url: "https://github.com/mateod062/asee-licensing-sdk-ios/releases/download/v1.0.0/ASEELicenseValidationSDK.xcframework.zip",
            checksum: "ef4d8c14e055563457d3497ca61f1b88fa895df18d3e214b30e8fa0f6be717aa"
        ),
        .binaryTarget(
            name: "ASEELicenseGenerationSDK",
            url: "https://github.com/mateod062/asee-licensing-sdk-ios/releases/download/v1.0.0/ASEELicenseGenerationSDK.xcframework.zip",
            checksum: "daf900a514c41cc639eccdee1f86075fd7ca0dd3108f868cf9c6bbadf45a9365"
        ),
        .target(
            name: "ASEELicenseValidationSDKSources",
            dependencies: [
                .product(name: "ASEEAuthenticationBaseSDKPackage", package: "ios.assecolib.authenticationbasesdk.package"),
            ],
            path: "Sources/ASEELicenseValidationSDK"
        ),
        .target(
            name: "ASEELicenseGenerationSDKSources",
            dependencies: [
                .product(name: "ASEEAuthenticationBaseSDKPackage", package: "ios.assecolib.authenticationbasesdk.package"),
            ],
            path: "Sources/ASEELicenseGenerationSDK"
        ),
    ]
)
