// swift-tools-version:5.0
import PackageDescription

let cyamlTarget: Target = .target(name: "CYaml")
#if os(Windows)
    cyamlTarget.cSettings = [.define("YAML_DECLARE_STATIC")]
#endif

let package = Package(
    name: "Yams",
    products: [
        .library(name: "Yams", targets: ["Yams"])
    ],
    targets: [
        cyamlTarget,
        .target(name: "Yams", dependencies: ["CYaml"]),
        .testTarget(name: "YamsTests", dependencies: ["Yams"])
    ]
)
