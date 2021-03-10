Pod::Spec.new do |spec|
  spec.name         = "BidMachineAdMobAdManager"
  spec.version      = "0.1.0"
  spec.summary      = "BidMachine IOS SDK for GAM mediation"
  spec.description  = <<-DESC
  Supported ad formats: Banner, Interstitial, Rewarded Video.\n
                   DESC
  spec.homepage     = "https://github.com/bidmachine/BidMachine-IOS-Google-Ad-Manager"
  spec.license      = { :type => 'GPL 3.0', :file => 'LICENSE' }
  spec.author       = { "Appodeal" => "http://www.appodeal.com" }

  spec.platform     = :ios, '10.0'
  spec.source       = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/BidMachineAdMobAdManager/#{spec.version}/BidMachineAdMobAdManager-#{spec.version}.zip" }

  spec.vendored_frameworks = 'BidMachineAdMobAdManager.framework'
  spec.dependency 'BDMIABAdapter', '1.7.0.2.0-Beta'
  spec.dependency 'Google-Mobile-Ads-SDK', '8.1.0'

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