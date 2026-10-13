// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "TUICallKit_Swift",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "TUICallKit_Swift", targets: ["TUICallKit_Swift", "TUICallKit_SwiftObjC"])
    ],
    dependencies: [
        .package(url: "https://github.com/Tencent-RTC/AtomicX_SwiftPM.git", from: "4.2.2"),
        .package(url: "https://github.com/Tencent-RTC/AtomicXCore_SwiftPM.git", from: "4.3.0"),
        .package(url: "https://github.com/Tencent-RTC/RTCRoomEngine_SwiftPM.git", from: "4.3.0"),
        .package(url: "https://github.com/Tencent-RTC/TUICore_SwiftPM.git", from: "9.0.7652"),
        .package(url: "https://github.com/Tencent-RTC/Chat_SDK_SwiftPM.git", from: "9.0.7652"),
        .package(url: "https://github.com/SnapKit/SnapKit.git", from: "5.7.1"),
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.0.1")
    ],
    targets: [
        .target(
            name: "TUICallKit_Swift",
            dependencies: [
                .product(name: "AtomicX", package: "AtomicX_SwiftPM"),
                .product(name: "AtomicXCore", package: "AtomicXCore_SwiftPM"),
                .product(name: "RoomEngine", package: "RTCRoomEngine_SwiftPM"),
                .product(name: "TUICore_SwiftPM", package: "TUICore_SwiftPM"),
                .product(name: "Chat_SDK_SwiftPM", package: "Chat_SDK_SwiftPM"),
                .product(name: "SnapKit", package: "SnapKit"),
                .product(name: "SDWebImage", package: "SDWebImage"),
                "TUICallKit_SwiftObjC"
            ],
            path: "Sources",
            exclude: ["TUICallKit_SwiftObjC"],
            resources: [.process("Resources/Assets.xcassets"), .process("Resources/TUICallKitLocalized.xcstrings"), .copy("Resources/AudioFile"), .copy("Resources/TUICallKitTheme.bundle"), .process("Resources/loading.gif")],
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("Accelerate"),
                .linkedFramework("AssetsLibrary"),
                .linkedLibrary("c++"),
                .linkedLibrary("resolv"),
                .linkedLibrary("sqlite3")
            ]
        ),
        .target(
            name: "TUICallKit_SwiftObjC",
            path: "Sources/TUICallKit_SwiftObjC",
            publicHeadersPath: "."
        )
    ],
    swiftLanguageModes: [.v5]
)
