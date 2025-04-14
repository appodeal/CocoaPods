Pod::Spec.new do |s|
  s.name         = 'StackConsentManager' 
  s.version      = '3.0.0'
  s.summary      = 'Stack consent management platform iOS SDK'
  s.description  = <<-DESC
                   Stack consent management platform iOS SDK. Provides regulation zone check and consent window. 
                   Supports iAB consent framework v1.1.0 specification
                   DESC
  s.homepage     = 'https://explorestack.com' 

  s.license = {
    :type => "Commercial License",
    :text => "Copyright #{Time.new.year}. Appodeal Inc. All rights reserved.\nThe #{s.name} is available under a commercial license (https://appodeal.com/sdk-license-agreement)."
  }
  s.author       = { 
    'Stack' => 'https://www.explorestack.com' 
  }

  s.platform     = :ios, '12.0'
  s.swift_version = '5.0'
  s.source       = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/StackConsentManager/v#{s.version}/StackConsentManager.zip"  }

  s.frameworks = 'WebKit', 'AdSupport'
  s.library = 'z'
  s.vendored_frameworks = 'StackConsentManager.xcframework'
  s.dependency 'GoogleUserMessagingPlatform', '~> 2.1'
  s.resource_bundles = {
    'ConsentPrivacyInfo' => ['StackConsentManager.xcframework/ios-arm64/**/*.xcprivacy']
  }

  s.pod_target_xcconfig = {
    "VALID_ARCHS[sdk=iphoneos*]": "arm64 armv7",
    "VALID_ARCHS[sdk=iphonesimulator*]": "arm64 x86_64"
  }
end
