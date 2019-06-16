// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

var targets: [Target] = []

#if !swift(>=5.0)
//Only setup SR_5986 patch when we are not on in the objective C runtime
targets.append(.target(name:"SR_5986", dependencies:[]))
targets.append(.target(name: "StringIANACharacterSetEncoding", dependencies: ["SR_5986"]))
#else
targets.append(.target(name: "StringIANACharacterSetEncoding", dependencies: []))
#endif

targets.append(.testTarget(name: "StringIANACharacterSetEncodingTests",
                           dependencies: ["StringIANACharacterSetEncoding"]))


let package = Package(
    name: "StringIANACharacterSetEncoding",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "StringIANACharacterSetEncoding",
            targets: ["StringIANACharacterSetEncoding"]),
        ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: targets
)
