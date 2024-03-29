Pod::Spec.new do |s|
  s.name         = "StackModules"
  s.version      = "1.0.6"
  s.summary      = "Supported modules for Stack iOS products"

  s.description  = <<-DESC
                   Supported modules for Stack iOS products. Used in Appodeal, BidMachine and DataCore
                   DESC

  s.homepage     = "http://www.appodeal.com"


  s.license      = { :type => 'GPL 3.0', :file => 'LICENSE' }
  s.author       = { "Stack" => "http://www.explorestack.com" }

  s.platform     = :ios, '9.0'
  s.source       = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/StackModules/v#{s.version}/StackModules.zip" }

  s.default_subspec = "StackUIKit"
  
  s.subspec 'StackFoundation' do |ss|
    ss.vendored_frameworks = 'StackFoundation.framework'
    ss.library = 'z'
    ss.frameworks = 'SafariServices', 'StoreKit', 'WebKit', 'CoreTelephony', 'SystemConfiguration', 'AdSupport', 'CoreLocation', 'MobileCoreServices', 'AVFoundation', 'AudioToolbox'
  end

  s.subspec 'StackUIKit'  do |ss|
    ss.vendored_frameworks = 'StackUIKit.framework'
    ss.dependency'StackModules/StackFoundation'
  end

  s.pod_target_xcconfig = {
    "EXCLUDED_ARCHS[sdk=iphonesimulator*]": "arm64 arm64e armv7 armv7s",
    "EXCLUDED_ARCHS[sdk=iphoneos*]": "i386 x86_64"
  }

  s.user_target_xcconfig = {
    "EXCLUDED_ARCHS[sdk=iphonesimulator*]": "arm64 arm64e armv7 armv7s",
    "EXCLUDED_ARCHS[sdk=iphoneos*]": "i386 x86_64"
  }
end
