// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FeaturesManager",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(name: "LoginFeature", targets: ["LoginFeature"]),
        .library(name: "NotificationFeature", targets: ["NotificationFeature"]),
        .library(
            name: "FeaturesManager",
            targets: ["FeaturesManager"]),
    ],
    dependencies: [
//             在此列出你的依赖项
        .package(
            url: "https://github.com/TaoOrz/KTQuickStruct",from: "1.0.1"
        ),
        .package(
                  url: "https://github.com/SnapKit/SnapKit",
                  "5.0.1" ..< "5.7.1"
        ),
        .package(
                  url: "https://github.com/onevcat/Kingfisher",
                  "8.0.0" ..< "8.1.1"
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(name: "FeaturesManager",dependencies: [.product(name: "AULibrary", package: "ktquickstruct"),"SnapKit","Kingfisher"]),
        .binaryTarget(
            name: "LoginFeature",
            url:"https://firebasestorage.googleapis.com/v0/b/autotoll-407b9.appspot.com/o/LoginFeature.xcframework.zip?alt=media&token=41f4289f-f232-42e7-9f89-184c5ad84c8a",
            checksum: "7d720253b22805ef9d2f45226a53aa1df7f9938529a3986ce691226fb03038c2"
        ),
        .binaryTarget(
            name: "NotificationFeature",
            url:"https://firebasestorage.googleapis.com/v0/b/autotoll-407b9.appspot.com/o/NotificationFeature.xcframework.zip?alt=media&token=054df62e-b82e-4fb9-98ca-abf4719a0187",
            checksum: "9be3b8b698f321f2b97782eb2951a61de4b71ebd79b2ac380a50bb2fbf8c255e"
        )
        //
    ]
)
