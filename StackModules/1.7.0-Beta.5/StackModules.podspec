Pod::Spec.new do |s|
  s.name         = "StackModules"
  s.version      = "1.7.0-Beta.5"
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

  s.platform     = :ios, '10.0'
  s.source       = { 
    :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/StackModules/#{s.version}/StackModules.zip"
  }

  s.default_subspec   = "StackProductPresentation"
  s.static_framework  = true
  s.swift_versions    = "4.0", "4.2", "5.0", "5.1"
  s.swift_version = "5.1"

  s.subspec 'StackFoundation' do |ss|
    ss.resources = ['StackFoundation.xcframework/ios-arm64/**/*.bundle']
    ss.vendored_frameworks = 'StackFoundation.xcframework'
    ss.library = 'z'
    ss.frameworks = 'SafariServices', 'StoreKit', 'WebKit', 'CoreTelephony', 'SystemConfiguration', 'AdSupport', 'CoreLocation', 'MobileCoreServices', 'AVFoundation', 'AudioToolbox', 'UIKit', 'ImageIO', 'CoreGraphics'
  end

  s.subspec 'StackUIKit'  do |ss|
    ss.vendored_frameworks = 'StackUIKit.xcframework'
    ss.dependency'StackModules/StackFoundation'
  end

  s.subspec 'StackProductPresentation'  do |ss|
    ss.vendored_frameworks = 'StackProductPresentation.xcframework'
    ss.source_files = "Dummy.swift"
    ss.dependency'StackModules/StackUIKit'
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
