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
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkSmartdigimktAdapter/6.5.80.2.9/AnyThinkSmartdigimktAdapter-6.5.80.2.9.zip",
            checksum: "1dc5adba5d0be689cf399b2cbd0d2acaa9d651bd1d7281d9b4c51b483dc3026e"
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
