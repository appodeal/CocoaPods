Pod::Spec.new do |spec|
  sdkVersion        = "1.9.0.0-Beta.0.0"
  adapterVersion    = "1.9.0.0-Beta.0.0"
  networkVersion    = "12.8.0"
  sourceName        = "BDMTapjoyAdapter"
  tag               = "#{sourceName}-#{adapterVersion}"

  spec.name         = "#{sourceName}"
  spec.version      = "#{adapterVersion}"
  spec.summary      = "Bidmachine adapter for Tapjoy"
  spec.description  = <<-DESC
                      Appodeal’s supply-side platform is designed and built by veteran publishers,for publishers. Appodeal is not an ad network; it is a new approach to monetizing for publishers.
                      The platform is a large auction house, accompanied by a mediation layer, that exposes a publisher’s inventory to all available buyers on the market via relationships with every major ad network, RTB exchange, and DSP. Appodeal showcases publisher inventory to the advertiser, and offers the highest rate in real time.
                      Appodeal's goal is to cater to the needs of the publisher, not the advertiser, so you always know that you're in good hands.
                      DESC

  spec.homepage     = "https://bidmachine.io"
  spec.license      = { :type => 'GPL 3.0', :file => 'LICENSE' }
  spec.author       = { "Stack" => "https://explorestack.com/bidmachine/" }

  spec.platform     = :ios, "10.0"
  spec.source       = { :git => 'https://github.com/bidmachine/BidMachine-iOS-Adaptors.git', :tag => "v#{tag}" }
  spec.source_files = "#{sourceName}/*.{h,m}"
  spec.swift_versions = "4.0", "4.2", "5.0"

  spec.dependency "BidMachine", "~> #{sdkVersion}"
  spec.dependency "TapjoySDK", "#{networkVersion}"

  spec.static_framework         = true
  spec.pod_target_xcconfig = {
    "VALID_ARCHS": "arm64 armv7 armv7s x86_64",
    "VALID_ARCHS[sdk=iphoneos*]": "arm64 armv7 armv7s",
    "VALID_ARCHS[sdk=iphonesimulator*]": "x86_64"
  }
  spec.user_target_xcconfig = {
    "VALID_ARCHS": "arm64 armv7 armv7s x86_64",
    "VALID_ARCHS[sdk=iphoneos*]": "arm64 armv7 armv7s",
    "VALID_ARCHS[sdk=iphonesimulator*]": "x86_64"
  }
  spec.user_target_xcconfig     = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES' }
end