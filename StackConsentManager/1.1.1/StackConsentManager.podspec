Pod::Spec.new do |s|
  s.name         = 'StackConsentManager' 
  s.version      = '1.1.1' 
  s.summary      = 'Stack consent management platform iOS SDK' 
  s.description  = <<-DESC
                   Stack consent management platform iOS SDK. Provides regulation zone check and consent window. 
                   Supports iAB consent framework v1.1.0 specification
                   DESC
  s.homepage     = 'https://explorestack.com' 
  s.license      = { :type => 'GPL 3.0', :file => 'LICENSE' }
  s.author       = { 'Stack'  => 'https://www.explorestack.com'  }

  s.platform     = :ios, '9.0'
  s.source       = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/StackConsentManager/v#{s.version}/StackConsentManager.zip"  }

  s.frameworks = 'WebKit', 'AdSupport'
  s.library = 'z'
  s.vendored_frameworks = 'StackConsentManager.framework'

  s.pod_target_xcconfig = { 
    "VALID_ARCHS": "arm64 armv7 armv7s x86_64",
    "VALID_ARCHS[sdk=iphoneos*]": "arm64 armv7 armv7s",
    "VALID_ARCHS[sdk=iphonesimulator*]": "x86_64"
  }

  s.user_target_xcconfig = { 
    "VALID_ARCHS": "arm64 armv7 armv7s x86_64",
    "VALID_ARCHS[sdk=iphoneos*]": "arm64 armv7 armv7s",
    "VALID_ARCHS[sdk=iphonesimulator*]": "x86_64"
  }
end