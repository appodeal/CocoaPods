Pod::Spec.new do |s|
  s.name         = "StackModules"
  s.version      = "2.0.0-beta.1"
  s.summary      = "Supported modules for Stack iOS products"

  s.description  = <<-DESC
                   Supported modules for Stack iOS products. Used in Appodeal, BidMachine and DataCore
                   DESC

  s.homepage     = "https://appodeal.com"


  s.license      = {
    :type => "Commercial License",
    :text => "Copyright #{Time.new.year}. Appodeal Inc. All rights reserved.\nThe #{s.name} is available under a commercial license (https://appodeal.com/sdk-license-agreement)."
  }

  s.author       = { 
    "Stack" => "http://www.explorestack.com" 
  }

  s.platform     = :ios, '12.0'
  s.source       = { 
    :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/StackModules/2.0.0/StackModules.zip"
  }

  s.default_subspec   = "Dynamic"
  s.swift_versions    = "4.0", "4.2", "5.0", "5.1"
  s.swift_version = "5.1"
  s.frameworks = 'SafariServices', 'StoreKit', 'WebKit', 'CoreTelephony', 'SystemConfiguration', 'AdSupport', 'CoreLocation', 'MobileCoreServices', 'AVFoundation', 'AudioToolbox', 'UIKit', 'ImageIO', 'CoreGraphics'
  s.library = 'z'
  s.dependency 'OMSDK_Appodeal', '~> 1.4.12'

  s.subspec 'Dynamic' do |ss|
    ss.vendored_frameworks = 'Dynamic/StackModules.xcframework', 'Dynamic/StackProductPresentation.xcframework', 'Dynamic/StackRendering.xcframework' 
  end

  s.subspec 'Static' do |ss|
    ss.resource_bundles = {
      'StackModules' => ['Static/StackModules.xcframework/ios-arm64/**/PrivacyInfo.xcprivacy'],
      'StackProductPresentation' => ['Static/StackProductPresentation.xcframework/ios-arm64/**/PrivacyInfo.xcprivacy'],
      'StackRendering' => ['Static/StackRendering.xcframework/ios-arm64/**/PrivacyInfo.xcprivacy'],
    }
    
    ss.vendored_frameworks = 'Static/StackModules.xcframework', 'Static/StackProductPresentation.xcframework', 'Static/StackRendering.xcframework' 
  end

  s.pod_target_xcconfig = {
    "VALID_ARCHS": "arm64 armv7 x86_64",
    "VALID_ARCHS[sdk=iphoneos*]": "arm64 armv7",
    "VALID_ARCHS[sdk=iphonesimulator*]": "arm64 x86_64"
  }

  s.user_target_xcconfig = {
    "OTHER_LDFLAGS": '-ObjC'
  }
end
