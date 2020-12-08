Pod::Spec.new do |spec|
  sdkVersion        = "1.7.0.1-Beta"
  adapterVersion    = "1.7.0.1.1-Beta"
  networkVersion    = "21.6.8"
  sourceName        = "BDMSmaatoAdapter"
  tag               = "#{sourceName}-#{adapterVersion}"

  spec.name         = "#{sourceName}"
  spec.version      = "#{adapterVersion}"
  spec.summary      = "Bidmachine adapter for Smaato"
  spec.description  = <<-DESC
                      Appodeal’s supply-side platform is designed and built by veteran publishers,for publishers. Appodeal is not an ad network; it is a new approach to monetizing for publishers.
                      The platform is a large auction house, accompanied by a mediation layer, that exposes a publisher’s inventory to all available buyers on the market via relationships with every major ad network, RTB exchange, and DSP. Appodeal showcases publisher inventory to the advertiser, and offers the highest rate in real time.
                      Appodeal's goal is to cater to the needs of the publisher, not the advertiser, so you always know that you're in good hands.
                      DESC

  spec.homepage     = "https://bidmachine.io"
  spec.license      = { :type => 'GPL 3.0', :file => 'LICENSE' }
  spec.author       = { "Stack" => "https://explorestack.com/bidmachine/" }

  spec.platform     = :ios, "10.0"
  spec.source       = { :git => 'git@github.com:bidmachine/BidMachine-iOS-Adaptors.git', :tag => "v#{tag}" }
  spec.source_files = "#{sourceName}/*.{h,m}"

  spec.dependency "BidMachine", "#{sdkVersion}"
  spec.dependency "smaato-ios-sdk", "#{networkVersion}"
  spec.dependency "smaato-ios-sdk/Modules/UnifiedBidding", "#{networkVersion}"

  spec.static_framework         = true
  spec.pod_target_xcconfig      = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 arm64e armv7 armv7s', 'EXCLUDED_ARCHS[sdk=iphoneos*]' => 'i386 x86_64' }
  spec.user_target_xcconfig     = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 arm64e armv7 armv7s', 'EXCLUDED_ARCHS[sdk=iphoneos*]' => 'i386 x86_64' }
end