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
            checksum: "a95babbc03181034eba12ca5232b25ad605863cfc6ef4ff19c1a81a4e8ade69b"
        ),
        .binaryTarget(
            name: "ASEELicenseGenerationSDK",
            url: "https://github.com/mateod062/asee-licensing-sdk-ios/releases/download/v1.0.0/ASEELicenseGenerationSDK.xcframework.zip",
            checksum: "72b3e790aaf68efb257f07e119eb0e6e94aa8ee239e100a82fe14980bd03024c"
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
