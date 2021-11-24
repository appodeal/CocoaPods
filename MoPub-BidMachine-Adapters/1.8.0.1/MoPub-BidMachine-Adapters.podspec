Pod::Spec.new do |spec|

  sdkVersion        = "1.8.0.0"
  adapterVersion    = "1.8.0.1"
  networkVersion    = "5.18.0"
  sourceName        = "MoPub-BidMachine-Adapters"
  tag               = "#{adapterVersion}"

  spec.name         = "#{sourceName}"
  spec.version      = "#{adapterVersion}"
  spec.summary      = "BidMachine IOS adapter for MoPub mediation"
  spec.description  = <<-DESC
                      Appodeal’s supply-side platform is designed and built by veteran publishers,for publishers. Appodeal is not an ad network; it is a new approach to monetizing for publishers.
                      The platform is a large auction house, accompanied by a mediation layer, that exposes a publisher’s inventory to all available buyers on the market via relationships with every major ad network, RTB exchange, and DSP. Appodeal showcases publisher inventory to the advertiser, and offers the highest rate in real time.
                      Appodeal's goal is to cater to the needs of the publisher, not the advertiser, so you always know that you're in good hands.
                      DESC

  spec.homepage     = "https://bidmachine.io"
  spec.license      = { :type => 'GPL 3.0', :file => 'LICENSE' }
  spec.author       = { "Stack" => "https://explorestack.com/bidmachine/" }

  spec.platform     = :ios, '10.0'
  # spec.source       = { :git => "https://github.com/bidmachine/BidMachine-IOS-MoPub-Adapter.git", :tag => "v#{tag}" }
  spec.source       = { :git => "https://github.com/bidmachine/BidMachine-IOS-MoPub-Adapter.git", :branch => "master" }
  spec.swift_versions = "4.0", "4.2", "5.0"

  spec.default_subspec = 'Prebid'
  
  spec.subspec 'All' do |all|
    all.dependency "#{sourceName}/Prebid"
    all.dependency "#{sourceName}/Postbid"
  end

  spec.subspec 'Prebid' do |prebid|
    prebid.dependency "BDMIABAdapter", "~> #{sdkVersion}"
    prebid.dependency "mopub-ios-sdk", "~> #{networkVersion}"
    prebid.source_files = 'Adapter/Prebid/*.{h,m}'
  end

  spec.subspec 'Postbid' do |postbid|
    postbid.dependency "BDMIABAdapter", "~> #{sdkVersion}"
    postbid.dependency "mopub-ios-sdk", "~> #{networkVersion}"
    postbid.source_files = 'Adapter/Postbid/*.{h,m}'   
  end

  
  spec.static_framework = true
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
end
