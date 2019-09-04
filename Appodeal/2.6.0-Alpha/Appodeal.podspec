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
  spec.author       = { "Appodeal, Inc" => "https://appodeal.com" }
 
  spec.platform     = :ios, "9.0"
  spec.source       = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/#{spec.version}/modular/Appodeal.zip" }

  spec.requires_arc = true

  spec.default_subspecs  = 'Full'
  spec.swift_versions = '4.0', '4.2', '5.0'

  spec.subspec 'Core' do |ss|
    ss.vendored_frameworks = 'Appodeal.framework'
    ss.preserve_paths = 'Appodeal.framework'
    ss.source_files = 'Appodeal.framework/Headers/*.h'
    ss.public_header_files = 'Appodeal.framework/Headers/*.h'

    ss.frameworks = 'Security', 'CoreMedia', 'CoreGraphics', 'CoreImage', 'SystemConfiguration', 'AVFoundation', 'MediaPlayer', 'QuartzCore', 'UIKit', 'WebKit', 'ImageIO', 'MobileCoreServices', 'CoreTelephony', 'CoreLocation'
    ss.weak_frameworks = 'AdSupport', 'StoreKit'
    ss.libraries = 'z', 'xml2'
  end

  spec.subspec 'Full' do |ss|
    ss.dependency 'Appodeal/Core'
    ss.dependency 'Appodeal/Video'
    ss.dependency 'Appodeal/Banner'
    ss.dependency 'Appodeal/Interstitial'
    ss.dependency 'Appodeal/Native'
  end

  spec.subspec 'Video' do |ss|
    ss.dependency 'Appodeal/AdColonyAdapter'
    ss.dependency 'Appodeal/AppLovinAdapter'
    ss.dependency 'Appodeal/ChartboostAdapter'
    ss.dependency 'Appodeal/InMobiAdapter'
    ss.dependency 'Appodeal/MyTargetAdapter'
    ss.dependency 'Appodeal/StartAppAdapter'
    ss.dependency 'Appodeal/TapjoyAdapter'
    ss.dependency 'Appodeal/UnityAdapter'
    ss.dependency 'Appodeal/VungleAdapter'
    ss.dependency 'Appodeal/IronSourceAdapter'
    ss.dependency 'Appodeal/AdExchangeAdapter'
    ss.dependency 'Appodeal/OpenXAdapter'
    ss.dependency 'Appodeal/InnerActiveAdapter'
    ss.dependency 'Appodeal/MintegralAdapter'
    ss.dependency 'Appodeal/SmaatoAdapter'
  end

  spec.subspec 'Banner' do |ss|
    ss.dependency 'Appodeal/AmazonAdsAdapter'
    ss.dependency 'Appodeal/FacebookAudienceAdapter'
    ss.dependency 'Appodeal/GoogleAdMobAdapter'
    ss.dependency 'Appodeal/InMobiAdapter'
    ss.dependency 'Appodeal/MyTargetAdapter'
    ss.dependency 'Appodeal/StartAppAdapter'
    ss.dependency 'Appodeal/UnityAdapter'
    ss.dependency 'Appodeal/YandexAdapter'
    ss.dependency 'Appodeal/AppLovinAdapter'
    ss.dependency 'Appodeal/AdExchangeAdapter'
    ss.dependency 'Appodeal/OpenXAdapter'
    ss.dependency 'Appodeal/InnerActiveAdapter'
    ss.dependency 'Appodeal/SmaatoAdapter'
  end

  spec.subspec 'Interstitial' do |ss|
    ss.dependency 'Appodeal/Video'
    ss.dependency 'Appodeal/AmazonAdsAdapter'
    ss.dependency 'Appodeal/FacebookAudienceAdapter'
    ss.dependency 'Appodeal/GoogleAdMobAdapter'
    ss.dependency 'Appodeal/InMobiAdapter'
    ss.dependency 'Appodeal/YandexAdapter'
  end

  spec.subspec 'Native' do |ss|
    ss.dependency 'Appodeal/AppLovinAdapter'
    ss.dependency 'Appodeal/FacebookAudienceAdapter'
    ss.dependency 'Appodeal/InMobiAdapter'
    ss.dependency 'Appodeal/MyTargetAdapter'
    ss.dependency 'Appodeal/StartAppAdapter'
    ss.dependency 'Appodeal/PubnativeAdapter'
    ss.dependency 'Appodeal/OpenXAdapter'
    ss.dependency 'Appodeal/InnerActiveAdapter'
    ss.dependency 'Appodeal/MintegralAdapter'
    ss.dependency 'Appodeal/GoogleAdMobAdapter'
    ss.dependency 'Appodeal/SmaatoAdapter'
  end

  spec.subspec 'AdColonyAdapter' do |ss|
    ss.vendored_frameworks = 'AdColonyAdapter.embeddedframework/*.framework'
    ss.vendored_libraries = 'AdColonyAdapter.embeddedframework/*.a'

    ss.source_files = 'Dummy.swift'
    ss.frameworks = 'AudioToolbox', 'JavaScriptCore', 'MessageUI'
    ss.weak_frameworks = 'Social', 'WatchConnectivity'
    
    ss.dependency 'Appodeal/Core'
  end

  spec.subspec 'AmazonAdsAdapter' do |ss|
    ss.vendored_frameworks = 'AmazonAdsAdapter.embeddedframework/*.framework'
    ss.vendored_libraries = 'AmazonAdsAdapter.embeddedframework/*.a'

    ss.source_files = 'Dummy.swift'
    ss.dependency 'Appodeal/Core'
    ss.frameworks = 'JavaScriptCore', 'SafariServices', 'EventKit', 'EventKitUI'
  end

  spec.subspec 'AppLovinAdapter' do |ss|
    ss.vendored_frameworks = 'AppLovinAdapter.embeddedframework/*.framework'
    ss.vendored_libraries = 'AppLovinAdapter.embeddedframework/*.a'
    ss.source_files = 'Dummy.swift'

    ss.dependency 'Appodeal/Core'
    ss.frameworks = 'SafariServices'
  end

  spec.subspec 'AdExchangeAdapter' do |ss|
    ss.vendored_libraries = 'AppodealAdExchangeAdapter.embeddedframework/*.a'
    ss.source_files = 'Dummy.swift'

    ss.dependency 'Appodeal/Core'
  end

  spec.subspec 'ChartboostAdapter' do |ss|
    ss.vendored_frameworks = 'ChartboostAdapter.embeddedframework/*.framework'
    ss.vendored_libraries = 'ChartboostAdapter.embeddedframework/*.a'
    ss.source_files = 'Dummy.swift'

    ss.dependency 'Appodeal/Core'
    ss.frameworks = 'Foundation'
  end

  spec.subspec 'FacebookAudienceAdapter' do |ss|
    ss.vendored_frameworks = 'FacebookAudienceAdapter.embeddedframework/*.framework'
    ss.vendored_libraries = 'FacebookAudienceAdapter.embeddedframework/*.a'
    ss.source_files = 'Dummy.swift'

    ss.dependency 'Appodeal/Core'
    ss.dependency 'FBSDKCoreKit/Basics', '~> 5.2.1'
    ss.frameworks = 'AudioToolbox', 'Foundation'
    ss.weak_frameworks = 'CFNetwork', 'CoreMotion', 'LocalAuthentication', 'SafariServices', 'VideoToolbox'
    ss.libraries = 'c++'
  end

  spec.subspec 'GoogleAdMobAdapter' do |ss|
    ss.vendored_frameworks = 'GoogleAdMobAdapter.embeddedframework/*.framework'
    ss.vendored_libraries = 'GoogleAdMobAdapter.embeddedframework/*.a'
    ss.source_files = 'Dummy.swift'

    ss.dependency 'Appodeal/Core'
    ss.frameworks = 'AudioToolbox', 'CoreBluetooth', 'EventKit', 'EventKitUI', 'MessageUI'
  end

  spec.subspec 'InMobiAdapter' do |ss|
    ss.vendored_frameworks = 'InMobiAdapter.embeddedframework/*.framework'
    ss.vendored_libraries = 'InMobiAdapter.embeddedframework/*.a'
    ss.source_files = 'Dummy.swift'

    ss.dependency 'Appodeal/Core'
    ss.frameworks = 'AudioToolbox', 'EventKit', 'EventKitUI', 'Foundation', 'MessageUI', 'Social', 'SafariServices'
    ss.libraries = 'sqlite3.0'
  end

  spec.subspec 'InnerActiveAdapter' do |ss|
    ss.vendored_libraries = 'InnerActiveAdapter.embeddedframework/*.a'
    ss.source_files = 'Dummy.swift'

    ss.dependency 'Appodeal/Core'
  end

  spec.subspec 'IronSourceAdapter' do |ss|
    ss.vendored_frameworks = 'IronSourceAdapter.embeddedframework/*.framework'
    ss.vendored_libraries = 'IronSourceAdapter.embeddedframework/*.a'
    ss.source_files = 'Dummy.swift'

    ss.dependency 'Appodeal/Core'
    ss.frameworks = 'Foundation', 'CoreVideo', 'CFNetwork', 'AudioToolbox'
  end

  spec.subspec 'MintegralAdapter' do |ss|
    ss.vendored_frameworks = 'MintegralAdapter.embeddedframework/*.framework'
    ss.vendored_libraries = 'MintegralAdapter.embeddedframework/*.a'
    ss.source_files = 'Dummy.swift'

    ss.dependency 'Appodeal/Core'
    ss.frameworks = 'Foundation', 'Accelerate'
    ss.libraries = 'sqlite3.0'
  end

  spec.subspec 'MyTargetAdapter' do |ss|
    ss.vendored_frameworks = 'MyTargetAdapter.embeddedframework/*.framework'
    ss.vendored_libraries = 'MyTargetAdapter.embeddedframework/*.a'
    ss.source_files = 'Dummy.swift'

    ss.dependency 'Appodeal/Core'
    ss.weak_frameworks = 'SafariServices'
  end

  spec.subspec 'OpenXAdapter' do |ss|
    ss.vendored_libraries = 'OpenXAdapter.embeddedframework/*.a'
    ss.source_files = 'Dummy.swift'

    ss.dependency 'Appodeal/Core'
  end

  spec.subspec 'PubnativeAdapter' do |ss|
    ss.vendored_libraries = 'PubnativeAdapter.embeddedframework/*.a'
    ss.source_files = 'Dummy.swift'

    ss.dependency 'Appodeal/Core'
  end

  spec.subspec 'SmaatoAdapter' do |ss|
    ss.vendored_libraries = 'SmaatoAdapter.embeddedframework/*.a'
    ss.source_files = 'Dummy.swift'

    ss.dependency 'Appodeal/Core'
  end

  spec.subspec 'StartAppAdapter' do |ss|
    ss.vendored_frameworks = 'StartAppAdapter.embeddedframework/*.framework'
    ss.vendored_libraries = 'StartAppAdapter.embeddedframework/*.a'
    ss.resources = 'StartAppAdapter.embeddedframework/Resources/*'
    ss.source_files = 'Dummy.swift'

    ss.dependency 'Appodeal/Core'
  end

  spec.subspec 'TapjoyAdapter' do |ss|
    ss.vendored_frameworks = 'TapjoyAdapter.embeddedframework/*.framework'
    ss.vendored_libraries = 'TapjoyAdapter.embeddedframework/*.a'
    ss.resources = 'TapjoyAdapter.embeddedframework/**/*.bundle'
    ss.source_files = 'Dummy.swift'

    ss.dependency 'Appodeal/Core'
    ss.frameworks = 'CoreData', 'CFNetwork', 'CoreMotion', 'EventKitUI', 'EventKit', 'Foundation', 'MapKit', 'MessageUI'
    ss.libraries = 'sqlite3.0', 'c++'
  end

  spec.subspec 'TwitterMoPubAdapter' do |ss|
    ss.vendored_libraries = 'TwitterMoPubAdapter.embeddedframework/*.a'
    ss.source_files = 'Dummy.swift'

    ss.dependency 'Appodeal/Core'
    ss.dependency 'mopub-ios-sdk', '5.2.0'
  end

  spec.subspec 'UnityAdapter' do |ss|
    ss.vendored_frameworks = 'UnityAdapter.embeddedframework/*.framework'
    ss.vendored_libraries = 'UnityAdapter.embeddedframework/*.a'
    ss.source_files = 'Dummy.swift'

    ss.dependency 'Appodeal/Core'
    ss.frameworks = 'CFNetwork', 'CoreFoundation'
  end

  spec.subspec 'VungleAdapter' do |ss|
    ss.vendored_frameworks = 'VungleAdapter.embeddedframework/*.framework'
    ss.vendored_libraries = 'VungleAdapter.embeddedframework/*.a'
    ss.source_files = 'Dummy.swift'

    ss.dependency 'Appodeal/Core'
    ss.frameworks = 'AudioToolbox', 'CFNetwork', 'Foundation'
    ss.libraries = 'sqlite3.0'
  end

  spec.subspec 'YandexAdapter' do |ss|
    ss.vendored_frameworks = 'YandexAdapter.embeddedframework/*.framework'
    ss.vendored_libraries = 'YandexAdapter.embeddedframework/*.a'
    ss.source_files = 'Dummy.swift'

    ss.dependency 'Appodeal/Core'
    ss.frameworks = 'Foundation'
    ss.libraries = 'sqlite3.0', 'c++'
  end
end
