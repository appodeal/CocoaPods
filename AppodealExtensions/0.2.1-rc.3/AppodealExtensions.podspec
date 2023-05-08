Pod::Spec.new do |spec|
  spec.name         = "AppodealExtensions"
  spec.version      = "0.2.1-rc.3"
  spec.summary      = "Module for collecting exceptions and fatal signals"
  spec.description  = <<-DESC
  Appodeal’s supply-side platform is designed and built by veteran publishers,for publishers. Appodeal is not an ad network; it is a new approach to monetizing for publishers.
  The platform is a large auction house, accompanied by a mediation layer, that exposes a publisher’s inventory to all available buyers on the market via relationships with every major ad network, RTB exchange, and DSP. Appodeal showcases publisher inventory to the advertiser, and offers the highest rate in real time.
  Appodeal's goal is to cater to the needs of the publisher, not the advertiser, so you always know that you're in good hands.
                   DESC
  spec.homepage     = "https://appodeal.com"
  spec.license = {
    :type => "Copyright",
    :text => "Copyright #{Time.new.year}. Appodeal Inc. All rights reserved.\nThe #{spec.name} is available under a commercial license (https://appodeal.com/sdk-license-agreement)."
  }

  spec.author       = {
    "Appodeal, Inc" => "https://appodeal.com" 
  }
  
  spec.platform     = :ios, '12.0'
  spec.source       = { 
    :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/#{spec.name}/#{spec.version}/#{spec.name}.zip"
  }

  spec.swift_version = '5.0'
  spec.default_subspec = 'Core'


  spec.subspec 'RuntimeHeaders' do |ss|
    ss.vendored_frameworks = 'AppodealRuntimeHeaders.xcframework'
    ss.dependency 'Appodeal', '3.1.2-rc.3'
  end 

  spec.subspec 'Core' do |ss|
    ss.vendored_frameworks = 'AppodealExtensions.xcframework'
    ss.dependency 'AppodealExtensions/RuntimeHeaders'
    ss.dependency 'Bidon', '0.2.1+ds5'
  end 

  spec.subspec 'Full' do |ss|
    ss.dependency 'StackAnalytics/Base'
    ss.dependency 'StackAnalytics/Crashes'
  end

  spec.pod_target_xcconfig = {
    "OTHER_LDFLAGS": "-lObjC",
    "VALID_ARCHS[sdk=iphoneos*]": "arm64 armv7",
    "VALID_ARCHS[sdk=iphonesimulator*]": "x86_64 arm64"
  }

  spec.user_target_xcconfig = {
    "OTHER_LDFLAGS": "-lObjC"
  }
end
