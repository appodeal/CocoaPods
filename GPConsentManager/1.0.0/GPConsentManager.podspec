Pod::Spec.new do |s|
  s.name         = 'GPConsentManager' 
  s.version      = '1.0.0'
  s.summary      = 'Growth Platform consent management platform iOS SDK'
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

  s.platform     = :ios, '15.0'
  s.swift_version = '5.0'
  s.source       = { 
    :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/GPConsentManager/SPM/ComposeApp-1.0.0.zip"  
  }

  s.vendored_frameworks = 'ComposeApp.xcframework'
end
