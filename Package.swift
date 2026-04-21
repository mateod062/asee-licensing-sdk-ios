// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ASEELicensingSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "ASEELicenseValidationSDK",
            targets: ["ASEELicenseValidationSDK"]
        ),
        .library(
            name: "ASEELicenseGenerationSDK",
            targets: ["ASEELicenseGenerationSDK"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "ASEELicenseValidationSDK",
            url: "https://github.com/mateod062/asee-licensing-sdk-ios/releases/download/v1.0.0/ASEELicenseValidationSDK.xcframework.zip",
            checksum: "0ee818f783201c848abb329e23121bc98701b651529f3e54ba25973f1acc1b61"
        ),
        .binaryTarget(
            name: "ASEELicenseGenerationSDK",
            url: "https://github.com/mateod062/asee-licensing-sdk-ios/releases/download/v1.0.0/ASEELicenseGenerationSDK.xcframework.zip",
            checksum: "b54691b99bb364c70005281e3a68e3e4c82ba99d5cabd22e6efa267299976042"
        ),
    ]
)
