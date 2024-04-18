Pod::Spec.new do |s|
  s.name         = "StackModules"
  s.version      = "2.0.0-beta.4"
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
  s.frameworks = 'SafariServices', 'StoreKit', 'WebKit', 'CoreTelephony', 'SystemConfiguration', 'AdSupport', 'CoreLocation', 'MobileCoreServices', 'AVFoundation', 'AudioToolbox', 'UIKit', 'ImageIO', 'CoreGraphics', 'QuartzCore'
  s.library = 'z'

  # Dynamic subspecs
  s.subspec 'Dynamic' do |ss|
    ss.dependency 'StackModules/Core-Dynamic'
    ss.dependency 'StackModules/ProductPresentation-Dynamic'
    ss.dependency 'StackModules/Rendering-Dynamic'
  end
  
  s.subspec 'Core-Dynamic' do |ss|
    ss.vendored_frameworks = 'Dynamic/StackModules.xcframework'
  end

  s.subspec 'ProductPresentation-Dynamic' do |ss|
    ss.vendored_frameworks = 'Dynamic/StackProductPresentation.xcframework'
    ss.dependency 'StackModules/Core-Dynamic'
  end

  s.subspec 'Rendering-Dynamic' do |ss|
    ss.vendored_frameworks = 'Dynamic/StackRendering.xcframework'
    ss.dependency 'StackModules/Core-Dynamic'
    ss.dependency 'StackModules/ProductPresentation-Dynamic'
    ss.dependency 'OMSDK_Appodeal', '~> 1.4.12'
  end
  
  # Static subspecs
  s.subspec 'Static' do |ss|
    ss.dependency 'StackModules/Core-Static'
    ss.dependency 'StackModules/ProductPresentation-Static'
    ss.dependency 'StackModules/Rendering-Static'
  end

  s.subspec 'Core-Static' do |ss|
    ss.vendored_frameworks = 'Static/StackModules.xcframework'
    ss.resource_bundles = {
      'StackModules' => ['Static/StackModules.xcframework/ios-arm64/**/PrivacyInfo.xcprivacy']
    }
  end

  s.subspec 'ProductPresentation-Static' do |ss|
    ss.vendored_frameworks = 'Static/StackProductPresentation.xcframework'
    ss.dependency 'StackModules/Core-Static'
    ss.resource_bundles = {
      'StackProductPresentation' => ['Static/StackProductPresentation.xcframework/ios-arm64/**/PrivacyInfo.xcprivacy'],
    }
  end

  s.subspec 'Rendering-Static' do |ss|
    ss.vendored_frameworks = 'Static/StackRendering.xcframework'
    ss.dependency 'StackModules/Core-Static'
    ss.dependency 'StackModules/ProductPresentation-Static'
    ss.dependency 'OMSDK_Appodeal', '~> 1.4.12'
    ss.resource_bundles = {
      'StackRendering' => ['Static/StackRendering.xcframework/ios-arm64/**/PrivacyInfo.xcprivacy'],
    }
  end

  s.pod_target_xcconfig = {
    "OTHER_LDFLAGS": '-ObjC'
  }
end
