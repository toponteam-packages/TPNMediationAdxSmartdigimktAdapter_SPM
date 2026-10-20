// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TPNMediationAdxSmartdigimktAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "TPNMediationAdxSmartdigimktAdapter",
            targets: ["TPNMediationAdxSmartdigimktAdapterTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/toponteam-packages/TPNiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://gitee.com/zhouhanhao/SmartdigimktSDK_SPM.git", exact: "6.5.80")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkSmartdigimktAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkSmartdigimktAdapter/6.5.78.2.0/AnyThinkSmartdigimktAdapter-6.5.78.2.0.zip",
            checksum: "95801676e0db2f0637d4bd3dfa8414acf9eca42732c23adaa14003953d8ce2e3"
        ),
        .target(
            name: "TPNMediationAdxSmartdigimktAdapterTarget",
            dependencies: [
                "AnyThinkSmartdigimktAdapter",
                .product(name: "TPNiOS", package: "TPNiOS_SPM"),
                .product(name: "SmartdigimktSDK", package: "SmartdigimktSDK_SPM")
            ],
            path: "Sources/TPNMediationAdxSmartdigimktAdapterTarget"
        )
    ]
)
