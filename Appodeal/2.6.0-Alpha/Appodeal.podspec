Pod::Spec.new do |spec|
  spec.name         = "Appodeal"
  spec.version      = "2.6.0-Alpha"
  spec.summary      = "Appodeal iOS Framework"
  spec.description  = <<-DESC
    Appodeal’s supply-side platform is designed and built by veteran publishers,for publishers. Appodeal is not an ad network; it is a new approach to monetizing for publishers.
  The platform is a large auction house, accompanied by a mediation layer, that exposes a publisher’s inventory to all available buyers on the market via relationships with every major ad network, RTB exchange, and DSP. Appodeal showcases publisher inventory to the advertiser, and offers the highest rate in real time.
  Appodeal's goal is to cater to the needs of the publisher, not the advertiser, so you always know that you're in good hands.
                   DESC
  spec.homepage     = "https://appodeal.com"
  spec.license      = { :type => "Appodeal Privacy Policy", :file => "LICENSE.md" }
  spec.author             = { "Appodeal, Inc" => "https://appodeal.com" }
 
  spec.platform     = :ios, "9.0"
  spec.source       = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/#{spec.version}/modular/Appodeal.zip" }


  spec.requires_arc = true
  spec.static_framework = true
  spec.xcconfig = { "OTHER_LDFLAGS" => "-ObjC" }
  spec.swift_version = '4.2'
  spec.default_subspecs = "Core"

  spec.subspec 'Core' do |ss|
    ss.vendored_frameworks = 'Appodeal.framework'
    ss.source_files = 'Dummy.swift'
    ss.dependency 'StackModules', '~> 0.6.3'
    ss.dependency 'StackIAB', '~> 0.5.0'
    ss.dependency 'Protobuf', '~> 3.9'

    ss.weak_frameworks = 'AdSupport'
  end

  # spec.subspec 'Full' do |ss|
  #   ss.dependency 'Appodeal/Core'
  #   ss.dependency 'Appodeal/Video'
  #   ss.dependency 'Appodeal/Banner'
  #   ss.dependency 'Appodeal/Interstitial'
  #   ss.dependency 'Appodeal/Native'
  # end

  # spec.subspec 'Video' do |ss|
  #   ss.dependency 'Appodeal/AdColonyAdapter'
  #   ss.dependency 'Appodeal/AppLovinAdapter'
  #   ss.dependency 'Appodeal/ChartboostAdapter'
  #   ss.dependency 'Appodeal/InMobiAdapter'
  #   ss.dependency 'Appodeal/MyTargetAdapter'
  #   ss.dependency 'Appodeal/StartAppAdapter'
  #   ss.dependency 'Appodeal/TapjoyAdapter'
  #   ss.dependency 'Appodeal/UnityAdapter'
  #   ss.dependency 'Appodeal/VungleAdapter'
  #   ss.dependency 'Appodeal/IronSource'
  #   ss.dependency 'Appodeal/AdExchangeAdapter'
  #   ss.dependency 'Appodeal/OpenXAdapter'
  #   ss.dependency 'Appodeal/InnerActiveAdapter'
  #   ss.dependency 'Appodeal/MintegralAdapter'
  #   ss.dependency 'Appodeal/SmaatoAdapter'
  # end

  # spec.subspec 'Banner' do |ss|
  #   ss.dependency 'Appodeal/AmazonAdsAdapter'
  #   ss.dependency 'Appodeal/FacebookAudienceAdapter'
  #   ss.dependency 'Appodeal/GoogleAdMobAdapter'
  #   ss.dependency 'Appodeal/InMobiAdapter'
  #   ss.dependency 'Appodeal/MyTargetAdapter'
  #   ss.dependency 'Appodeal/StartAppAdapter'
  #   ss.dependency 'Appodeal/UnityAdapter'
  #   ss.dependency 'Appodeal/YandexAdapter'
  #   ss.dependency 'Appodeal/AppLovinAdapter'
  #   ss.dependency 'Appodeal/AdExchangeAdapter'
  #   ss.dependency 'Appodeal/OpenXAdapter'
  #   ss.dependency 'Appodeal/InnerActiveAdapter'
  #   ss.dependency 'Appodeal/SmaatoAdapter'
  # end

  # spec.subspec 'Interstitial' do |ss|
  #   ss.dependency 'Appodeal/Video'
  #   ss.dependency 'Appodeal/AmazonAdsAdapter'
  #   ss.dependency 'Appodeal/FacebookAudienceAdapter'
  #   ss.dependency 'Appodeal/GoogleAdMobAdapter'
  #   ss.dependency 'Appodeal/InMobiAdapter'
  #   ss.dependency 'Appodeal/YandexAdapter'
  # end

  # spec.subspec 'Native' do |ss|
  #   ss.dependency 'Appodeal/AppLovinAdapter'
  #   ss.dependency 'Appodeal/FacebookAudienceAdapter'
  #   ss.dependency 'Appodeal/InMobiAdapter'
  #   ss.dependency 'Appodeal/MyTargetAdapter'
  #   ss.dependency 'Appodeal/StartAppAdapter'
  #   ss.dependency 'Appodeal/PubnativeAdapter'
  #   ss.dependency 'Appodeal/OpenXAdapter'
  #   ss.dependency 'Appodeal/InnerActiveAdapter'
  #   ss.dependency 'Appodeal/MintegralAdapter'
  #   ss.dependency 'Appodeal/GoogleAdMobAdapter'
  #   ss.dependency 'Appodeal/SmaatoAdapter'
  # end

  # spec.subspec 'AdColonyAdapter' do |ss|
  #   ss.vendored_frameworks = 'AdColonyAdapter.embeddedframework/*.framework'
  #   ss.vendored_libraries = 'AdColonyAdapter.embeddedframework/*.a'
  #   ss.dependency 'Appodeal/Core'
  #   ss.frameworks = 'AdSupport', 'AudioToolbox', 'AVFoundation', 'CoreMedia', 'CoreTelephony', 'JavaScriptCore', 'MessageUI', 'MobileCoreServices', 'SystemConfiguration'
  #   ss.weak_frameworks = 'Social', 'StoreKit', 'WatchConnectivity', 'WebKit'
  #   ss.libraries = 'z'
  # end

  # spec.subspec 'AmazonAdsAdapter' do |ss|
  #   ss.vendored_frameworks = 'AmazonAdsAdapter.embeddedframework/*.framework'
  #   ss.vendored_libraries = 'AmazonAdsAdapter.embeddedframework/*.a'
  #   ss.dependency 'Appodeal/Core'
  #   ss.frameworks = 'AdSupport', 'CoreLocation', 'SystemConfiguration', 'JavaScriptCore', 'StoreKit', 'QuartzCore', 'SafariServices', 'CoreTelephony', 'CoreGraphics', 'MediaPlayer', 'EventKit', 'EventKitUI'
  # end

  # spec.subspec 'AppLovinAdapter' do |ss|
  #   ss.vendored_frameworks = 'AppLovinAdapter.embeddedframework/*.framework'
  #   ss.vendored_libraries = 'AppLovinAdapter.embeddedframework/*.a'
  #   ss.dependency 'Appodeal/Core'
  #   ss.frameworks = 'AdSupport', 'AVFoundation', 'CoreGraphics', 'CoreMedia', 'CoreTelephony', 'SafariServices', 'StoreKit', 'SystemConfiguration', 'UIKit', 'WebKit'
  #   ss.libraries = 'z'
  # end

  # spec.subspec 'AdExchangeAdapter' do |ss|
  #   ss.vendored_libraries = 'AppodealAdExchangeAdapter.embeddedframework/*.a'
  #   ss.dependency 'Appodeal/Core'
  # end

  # spec.subspec 'ChartboostAdapter' do |ss|
  #   ss.vendored_frameworks = 'ChartboostAdapter.embeddedframework/*.framework'
  #   ss.vendored_libraries = 'ChartboostAdapter.embeddedframework/*.a'
  #   ss.dependency 'Appodeal/Core'
  #   ss.frameworks = 'CoreGraphics', 'StoreKit', 'Foundation', 'UIKit', 'WebKit'
  #   ss.weak_frameworks = 'AdSupport'
  # end

  # spec.subspec 'FacebookAudienceAdapter' do |ss|
  #   ss.vendored_frameworks = 'FacebookAudienceAdapter.embeddedframework/*.framework'
  #   ss.vendored_libraries = 'FacebookAudienceAdapter.embeddedframework/*.a'
  #   ss.dependency 'Appodeal/Core'
  #   ss.dependency 'FBSDKCoreKit/Basics', '~> 5.2.1'
  #   ss.frameworks = 'AudioToolbox', 'StoreKit', 'CoreGraphics', 'UIKit', 'Foundation', 'Security', 'CoreImage', 'AVFoundation', 'CoreMedia'
  #   ss.weak_frameworks = 'AdSupport', 'CFNetwork', 'CoreMotion', 'CoreTelephony', 'LocalAuthentication', 'SafariServices', 'SystemConfiguration', 'VideoToolbox', 'WebKit'
  #   ss.libraries = 'c++', 'xml2'
  # end

  # spec.subspec 'GoogleAdMobAdapter' do |ss|
  #   ss.vendored_frameworks = 'GoogleAdMobAdapter.embeddedframework/*.framework'
  #   ss.vendored_libraries = 'GoogleAdMobAdapter.embeddedframework/*.a'
  #   ss.dependency 'Appodeal/Core'
  #   ss.frameworks = 'AudioToolbox', 'AVFoundation', 'CoreBluetooth', 'CoreGraphics', 'CoreMedia', 'CoreTelephony', 'EventKit', 'EventKitUI', 'MediaPlayer', 'MessageUI', 'StoreKit', 'SystemConfiguration'
  # end

  # spec.subspec 'InMobiAdapter' do |ss|
  #   ss.vendored_frameworks = 'InMobiAdapter.embeddedframework/*.framework'
  #   ss.vendored_libraries = 'InMobiAdapter.embeddedframework/*.a'
  #   ss.dependency 'Appodeal/Core'
  #   ss.frameworks = 'AdSupport', 'AudioToolbox', 'AVFoundation', 'CoreTelephony', 'CoreLocation', 'EventKit', 'EventKitUI', 'Foundation', 'MediaPlayer', 'MessageUI', 'StoreKit', 'Social', 'SystemConfiguration', 'Security', 'SafariServices', 'UIKit'
  #   ss.weak_frameworks = 'WebKit'
  #   ss.libraries = 'z', 'sqlite3.0'
  # end

  # spec.subspec 'InnerActiveAdapter' do |ss|
  #   ss.vendored_libraries = 'InnerActiveAdapter.embeddedframework/*.a'
  #   ss.dependency 'Appodeal/Core'
  # end

  # spec.subspec 'IronSource' do |ss|
  #   ss.vendored_frameworks = 'IronSource.embeddedframework/*.framework'
  #   ss.vendored_libraries = 'IronSource.embeddedframework/*.a'
  #   ss.dependency 'Appodeal/Core'
  #   ss.frameworks = 'Foundation', 'AVFoundation', 'CoreMedia', 'CoreVideo', 'QuartzCore', 'SystemConfiguration', 'CoreGraphics', 'CFNetwork', 'MobileCoreServices', 'StoreKit', 'AdSupport', 'CoreLocation', 'AudioToolbox', 'CoreTelephony', 'Security'
  # end

  # spec.subspec 'MintegralAdapter' do |ss|
  #   ss.vendored_frameworks = 'MintegralAdapter.embeddedframework/*.framework'
  #   ss.vendored_libraries = 'MintegralAdapter.embeddedframework/*.a'
  #   ss.dependency 'Appodeal/Core'
  #   ss.frameworks = 'CoreGraphics', 'Foundation', 'UIKit', 'AdSupport', 'StoreKit', 'QuartzCore', 'CoreLocation', 'CoreTelephony', 'MobileCoreServices', 'Accelerate'
  #   ss.libraries = 'z', 'sqlite3.0'
  # end

  # spec.subspec 'MyTargetAdapter' do |ss|
  #   ss.vendored_frameworks = 'MyTargetAdapter.embeddedframework/*.framework'
  #   ss.vendored_libraries = 'MyTargetAdapter.embeddedframework/*.a'
  #   ss.dependency 'Appodeal/Core'
  #   ss.frameworks = 'AdSupport', 'StoreKit', 'SystemConfiguration', 'CoreGraphics', 'CoreTelephony', 'AVFoundation', 'CoreLocation', 'CoreMedia'
  #   ss.weak_frameworks = 'SafariServices'
  # end

  # spec.subspec 'OpenXAdapter' do |ss|
  #   ss.vendored_libraries = 'OpenXAdapter.embeddedframework/*.a'
  #   ss.dependency 'Appodeal/Core'
  # end

  # spec.subspec 'PubnativeAdapter' do |ss|
  #   ss.vendored_libraries = 'PubnativeAdapter.embeddedframework/*.a'
  #   ss.dependency 'Appodeal/Core'
  # end

  # spec.subspec 'SmaatoAdapter' do |ss|
  #   ss.vendored_libraries = 'SmaatoAdapter.embeddedframework/*.a'
  #   ss.dependency 'Appodeal/Core'
  # end

  # spec.subspec 'StartAppAdapter' do |ss|
  #   ss.vendored_frameworks = 'StartAppAdapter.embeddedframework/*.framework'
  #   ss.vendored_libraries = 'StartAppAdapter.embeddedframework/*.a'
  #   ss.resources = 'StartAppAdapter.embeddedframework/Resources/*'
  #   ss.dependency 'Appodeal/Core'
  #   ss.frameworks = 'AdSupport', 'StoreKit', 'CoreTelephony', 'SystemConfiguration', 'CoreGraphics', 'QuartzCore', 'CoreMedia', 'AVFoundation', 'WebKit'
  #   ss.libraries = 'z'
  # end

  # spec.subspec 'TapjoyAdapter' do |ss|
  #   ss.vendored_frameworks = 'TapjoyAdapter.embeddedframework/*.framework'
  #   ss.vendored_libraries = 'TapjoyAdapter.embeddedframework/*.a'
  #   ss.resources = 'TapjoyAdapter.embeddedframework/Resources/*'
  #   ss.dependency 'Appodeal/Core'
  #   ss.frameworks = 'ImageIO', 'WebKit', 'Security', 'CoreData', 'CFNetwork', 'CoreGraphics', 'CoreLocation', 'CoreMotion', 'EventKitUI', 'EventKit', 'Foundation', 'MapKit', 'MediaPlayer', 'MessageUI', 'MobileCoreServices', 'QuartzCore', 'SystemConfiguration', 'UIKit'
  #   ss.weak_frameworks = 'AdSupport', 'CoreTelephony', 'StoreKit'
  #   ss.libraries = 'z', 'sqlite3.0', 'c++', 'xml2'
  # end

  # spec.subspec 'TwitterMoPubAdapter' do |ss|
  #   ss.vendored_libraries = 'TwitterMoPubAdapter.embeddedframework/*.a'
  #   ss.dependency 'Appodeal/Core'
  #   ss.dependency 'mopub-ios-sdk', '5.2.0'
  # end

  # spec.subspec 'UnityAdapter' do |ss|
  #   ss.vendored_frameworks = 'UnityAdapter.embeddedframework/*.framework'
  #   ss.vendored_libraries = 'UnityAdapter.embeddedframework/*.a'
  #   ss.dependency 'Appodeal/Core'
  #   ss.frameworks = 'AdSupport', 'AVFoundation', 'CFNetwork', 'CoreFoundation', 'CoreMedia', 'CoreTelephony', 'StoreKit', 'SystemConfiguration'
  # end

  # spec.subspec 'VungleAdapter' do |ss|
  #   ss.vendored_frameworks = 'VungleAdapter.embeddedframework/*.framework'
  #   ss.vendored_libraries = 'VungleAdapter.embeddedframework/*.a'
  #   ss.dependency 'Appodeal/Core'
  #   ss.frameworks = 'AdSupport', 'AudioToolbox', 'AVFoundation', 'CFNetwork', 'CoreGraphics', 'CoreMedia', 'Foundation', 'MediaPlayer', 'QuartzCore', 'StoreKit', 'SystemConfiguration', 'UIKit', 'WebKit'
  #   ss.libraries = 'z', 'sqlite3.0'
  # end

  # spec.subspec 'YandexAdapter' do |ss|
  #   ss.vendored_frameworks = 'YandexAdapter.embeddedframework/*.framework'
  #   ss.vendored_libraries = 'YandexAdapter.embeddedframework/*.a'
  #   ss.dependency 'Appodeal/Core'
  #   ss.frameworks = 'UIKit', 'Foundation', 'CoreTelephony', 'CoreLocation', 'CoreGraphics', 'AdSupport', 'StoreKit', 'SystemConfiguration'
  #   ss.libraries = 'z', 'sqlite3.0', 'c++'
  # end
end
