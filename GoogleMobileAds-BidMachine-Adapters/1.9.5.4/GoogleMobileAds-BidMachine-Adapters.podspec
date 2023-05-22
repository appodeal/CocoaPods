Pod::Spec.new do |spec|

  spec.name         = "GoogleMobileAds-BidMachine-Adapters"
  spec.version      = "1.9.5.4"
  spec.summary      = "BidMachine IOS adapter for GoogleMobileAds mediation"
  spec.description  = "Supported ad formats: Banner, Interstitial, Rewarded Video."
  spec.homepage     = "https://github.com/bidmachine/BidMachine-Google-Mobile-Ads-iOS-Adapters"
  spec.license      = { :type => 'Commercial', :text => 'https://bidmachine.io/privacy-policy/' }

  spec.author       = { "Stack" => "https://explorestack.com/bidmachine/" }
  spec.platform     = :ios, '11.0'
  spec.source       = { :git => "https://github.com/bidmachine/BidMachine-Google-Mobile-Ads-iOS-Adapters.git", :tag => "v#{spec.version}" }
  
  spec.swift_versions           = "4.0", "4.2", "5.0"

  spec.source_files = 'BidMachineAdMobAdapter/**/*.{h,m}'
  spec.static_framework = true

  spec.pod_target_xcconfig = {
    "VALID_ARCHS[sdk=iphoneos*]": "arm64",
    "VALID_ARCHS[sdk=iphonesimulator*]": "arm64 x86_64"
  }

  spec.dependency 'BDMIABAdapter', '~> 1.9.5.1'
  spec.dependency 'Google-Mobile-Ads-SDK', '~> 10.5.0'
end
