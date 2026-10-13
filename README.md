# TUICallKit_Swift

TUICallKit_Swift 是基于 TRTC 与即时通信 IM 的音视频通话 UI 组件，提供单人通话、群组通话的界面与通话设置，
开箱即用，可直接嵌入现有 App。

## 环境要求

- iOS 13.0 及以上
- Xcode 15 及以上

## 集成（SwiftPM）

1. 在 Xcode 中选择 **File → Add Package Dependencies**
2. 填入仓库地址：

```
https://github.com/Tencent-RTC/CallKit_SwiftPM.git
```

3. 选择需要的版本（建议 `Up to Next Major Version`）
4. 在 Target 的 **Frameworks, Libraries, and Embedded Content** 中添加 product `TUICallKit_Swift`

也可以直接写在 `Package.swift` 里：

```swift
dependencies: [
    .package(url: "https://github.com/Tencent-RTC/CallKit_SwiftPM.git", from: "4.3.0")
],
targets: [
    .target(
        name: "YourTarget",
        dependencies: [
            .product(name: "TUICallKit_Swift", package: "CallKit_SwiftPM")
        ]
    )
]
```

使用时：

```swift
import TUICallKit_Swift
```
