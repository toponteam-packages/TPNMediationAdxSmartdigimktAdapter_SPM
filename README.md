# TopOn - iOS Smartdigimkt ADX Mediation Adapter

The TopOn Smartdigimkt ADX mediation adapter for iOS, distributed via Swift Package Manager.

## Requirements

- iOS 12.0+
- Xcode 15.0+
- TopOn iOS Core SDK (`TPNiOS`) 6.5.0+

## Installation

### Xcode

1. In Xcode, choose **File > Add Package Dependencies…**
2. Enter the repository URL:
   ```
   https://github.com/toponteam-packages/TPNMediationAdxSmartdigimktAdapter_SPM
   ```
3. Select **Exact Version** and enter the target version (e.g. `6.5.78-2.0`).
4. Add the `TPNMediationAdxSmartdigimktAdapter` product to your app target.
5. In your target's **Build Settings**, add `-ObjC` to **Other Linker Flags**.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/toponteam-packages/TPNMediationAdxSmartdigimktAdapter_SPM.git",
        exact: "6.5.78-2.0"
    )
]
```

## Included dependencies

- [`TPNiOS`](https://github.com/toponteam-packages/TPNiOS_SPM) (>= 6.5.0)
- [`SmartdigimktSDK`](https://github.com/toponteam-packages/SmartdigimktSDK_SPM)

## More information

- [TopOn iOS Integration Guide](https://docs.toponad.com)
