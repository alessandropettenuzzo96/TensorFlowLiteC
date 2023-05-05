// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TensorFlowLiteC",
    products: [
        .library(
            name: "TensorFlowLiteC",
            targets: [
                "TensorFlowLiteC",
                "TensorFlowLiteCCoreML",
                "TensorFlowLiteCMetal",
                "TensorFlowLiteSelectTfOps",
                "Link",
            ]
        ),
    ],
    targets: [
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/alessandropettenuzzo96/TensorFlowLiteC/releases/download/v0.0.1/TensorFlowLiteC.xcframework.zip", checksum: "0ffa228ce8727640e1720ba8cb7142571fa21752cc204ae8fc433f4dda6ff906"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/alessandropettenuzzo96/TensorFlowLiteC/releases/download/v0.0.1/TensorFlowLiteCCoreML.xcframework.zip", checksum: "14ef2f3112000271d8869759a184afd583d5e43fca7d01aafce4bc8a6587cb52"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/alessandropettenuzzo96/TensorFlowLiteC/releases/download/v0.0.1/TensorFlowLiteCMetal.xcframework.zip", checksum: "11720d1841c170f6ab4eb33ea327268696fccc8a1d68c1f0e9a2456a013a87af"),
        .binaryTarget(name: "TensorFlowLiteSelectTfOps", url: "https://github.com/alessandropettenuzzo96/TensorFlowLiteC/releases/download/v0.0.1/TensorFlowLiteSelectTfOps.xcframework.zip", checksum: "277232e0b97331ca0fb74f1ab7c8f029abba4e02d7452a7efa4f5e2e17ba71b8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
