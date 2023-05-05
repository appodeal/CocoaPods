Pod::Spec.new do |spec|
  spec.name         = "StackAnalytics"
  spec.version      = "1.4.3"
  spec.summary      = "Module for collecting exceptions and fatal signals"
  spec.description  = <<-DESC
  Appodeal’s supply-side platform is designed and built by veteran publishers,for publishers. Appodeal is not an ad network; it is a new approach to monetizing for publishers.
  The platform is a large auction house, accompanied by a mediation layer, that exposes a publisher’s inventory to all available buyers on the market via relationships with every major ad network, RTB exchange, and DSP. Appodeal showcases publisher inventory to the advertiser, and offers the highest rate in real time.
  Appodeal's goal is to cater to the needs of the publisher, not the advertiser, so you always know that you're in good hands.
                   DESC
  spec.homepage     = "https://appodeal.com"
  spec.license = {
    :type => "Commercial License",
    :text => "Copyright #{Time.new.year}. Appodeal Inc. All rights reserved.\nThe #{spec.name} is available under a commercial license (https://appodeal.com/sdk-license-agreement)."
  }

  spec.author       = {
    "Appodeal, Inc" => "https://appodeal.com" 
  }
  
  spec.platform     = :ios, "11.0"
  spec.source       = { 
    :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/#{spec.name}/swiftpm/#{spec.version}/#{spec.name}.zip"
  }

  spec.dependency 'StackModules', '~> 1.5.0'
  spec.swift_versions = "4.0", "4.2", "5.0"
  spec.default_subspec = 'Full'


  spec.subspec 'Base' do |ss|
    ss.vendored_frameworks = 'StackAnalytics.xcframework'
    ss.library = 'sqlite3'
  end 

  spec.subspec 'Crashes' do |ss|
    ss.vendored_frameworks = 'StackCrashReporter.xcframework'
    ss.libraries = 'c++', 'z'
  end 

  spec.subspec 'Full' do |ss|
    ss.dependency 'StackAnalytics/Base'
    ss.dependency 'StackAnalytics/Crashes'
  end

  spec.pod_target_xcconfig = {
    "VALID_ARCHS[sdk=iphoneos*]": "arm64 armv7 ",
    "VALID_ARCHS[sdk=iphonesimulator*]": "arm64 x86_64"
  }
end
