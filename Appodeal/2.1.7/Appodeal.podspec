Pod::Spec.new do |s|

  s.name         = "Appodeal"
  s.version      = "2.1.7"
  s.summary      = "Appodeal iOS Framework"

  s.description  = <<-DESC
Appodeal’s supply-side platform is designed and built by veteran publishers,for publishers. Appodeal is not an ad network; it is a new approach to monetizing for publishers.
The platform is a large auction house, accompanied by a mediation layer, that exposes a publisher’s inventory to all available buyers on the market via relationships with every major ad network, RTB exchange, and DSP. Appodeal showcases publisher inventory to the advertiser, and offers the highest rate in real time.
Appodeal's goal is to cater to the needs of the publisher, not the advertiser, so you always know that you're in good hands.
                   DESC

  s.homepage     = "http://appodeal.com"
  s.license      = { :type => 'Appodeal Privacy Policy', :file => 'LICENSE.md'  }
  s.author       = { "Appodeal, Inc." => "https://appodeal.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/2.1.7/cocoapods/Appodeal.zip" }


  s.default_subspec = 'Full'

  s.subspec 'Full' do |ss|
    ss.dependency 'Appodeal/Core'
    ss.dependency 'Appodeal/Video'
    ss.dependency 'Appodeal/Banner'
    ss.dependency 'Appodeal/Interstitial'
    ss.dependency 'Appodeal/Native'
  end

  s.subspec 'Video' do |ss|
    ss.dependency 'Appodeal/AdColonyAdapter'
    ss.dependency 'Appodeal/AppLovinAdapter'
    ss.dependency 'Appodeal/ChartboostAdapter'
    ss.dependency 'Appodeal/InMobiAdapter'
    ss.dependency 'Appodeal/MyTargetAdapter'
    ss.dependency 'Appodeal/StartAppAdapter'
    ss.dependency 'Appodeal/TapjoyAdapter'
    ss.dependency 'Appodeal/TwitterMoPubAdapter'
    ss.dependency 'Appodeal/UnityAdapter'
    ss.dependency 'Appodeal/VungleAdapter'
    ss.dependency 'Appodeal/IronSource'
  end

  s.subspec 'Banner' do |ss|
    ss.dependency 'Appodeal/AmazonAdsAdapter'
    ss.dependency 'Appodeal/FacebookAudienceAdapter'
    ss.dependency 'Appodeal/GoogleAdMobAdapter'
    ss.dependency 'Appodeal/InMobiAdapter'
    ss.dependency 'Appodeal/MyTargetAdapter'
    ss.dependency 'Appodeal/StartAppAdapter'
    ss.dependency 'Appodeal/TwitterMoPubAdapter'
    ss.dependency 'Appodeal/YandexAdapter'
  end

  s.subspec 'Interstitial' do |ss|
    ss.dependency 'Appodeal/Video'
    ss.dependency 'Appodeal/AmazonAdsAdapter'
    ss.dependency 'Appodeal/FacebookAudienceAdapter'
    ss.dependency 'Appodeal/GoogleAdMobAdapter'
    ss.dependency 'Appodeal/InMobiAdapter'
    ss.dependency 'Appodeal/YandexAdapter'
  end

  s.subspec 'Native' do |ss|
    ss.dependency 'Appodeal/AppLovinAdapter'
    ss.dependency 'Appodeal/FacebookAudienceAdapter'
    ss.dependency 'Appodeal/InMobiAdapter'
    ss.dependency 'Appodeal/MyTargetAdapter'
    ss.dependency 'Appodeal/PubnativeAdapter'
    ss.dependency 'Appodeal/StartAppAdapter'
    ss.dependency 'Appodeal/TwitterMoPubAdapter'
    ss.dependency 'Appodeal/FlurryAdapter'
  end

  s.subspec 'Core' do |ss|
    ss.resources = "Appodeal.bundle"
    ss.vendored_frameworks = "Appodeal.framework"
    ss.preserve_path = "Appodeal.framework"

    ss.resources = "Appodeal.bundle"
    ss.frameworks = "Security", "CoreMedia", "CoreGraphics", "CoreImage", "SystemConfiguration", "AVFoundation", "MediaPlayer", "QuartzCore", "UIKit", "WebKit", "ImageIO", "MobileCoreServices", "CoreTelephony", "CoreLocation"
    ss.weak_frameworks = "AdSupport", "StoreKit"
    ss.libraries = "z", "xml2"
  end

  s.subspec 'AdColonyAdapter' do |ss|
    ss.vendored_frameworks = "APDAdColonyAdapter.embeddedframework/*.framework"
    ss.vendored_libraries = "APDAdColonyAdapter.embeddedframework/*.a"
    ss.frameworks = "AudioToolbox", "CoreMedia", "EventKitUI", "MessageUI"
    ss.dependency 'Appodeal/Core'
  end

  s.subspec 'AmazonAdsAdapter' do |ss|
    ss.vendored_frameworks = "APDAmazonAdsAdapter.embeddedframework/*.framework"
    ss.vendored_libraries = "APDAmazonAdsAdapter.embeddedframework/*.a"
    ss.frameworks = "EventKitUI", "EventKit", "JavaScriptCore", "SafariServices"
    ss.dependency 'Appodeal/Core'
  end

  s.subspec 'AppLovinAdapter' do |ss|
    ss.vendored_frameworks = "APDAppLovinAdapter.embeddedframework/*.framework"
    ss.vendored_libraries = "APDAppLovinAdapter.embeddedframework/*.a"
    ss.frameworks = "CoreMedia"
    ss.dependency 'Appodeal/Core'
  end

  s.subspec 'ChartboostAdapter' do |ss|
    ss.vendored_frameworks = "APDChartboostAdapter.embeddedframework/*.framework"
    ss.vendored_libraries = "APDChartboostAdapter.embeddedframework/*.a"
    ss.frameworks = "CoreMedia", "CoreData"
    ss.dependency 'Appodeal/Core'
  end

  s.subspec 'FacebookAudienceAdapter' do |ss|
    ss.vendored_frameworks = "APDFacebookAudienceAdapter.embeddedframework/*.framework"
    ss.vendored_libraries = "APDFacebookAudienceAdapter.embeddedframework/*.a"
    ss.libraries = "c++"
    ss.frameworks = "AudioToolbox", "CoreMedia"
    ss.weak_frameworks = "CoreMotion"
    ss.dependency 'Appodeal/Core'
  end

  s.subspec 'GoogleAdMobAdapter' do |ss|
    ss.vendored_frameworks = "APDGoogleAdMobAdapter.embeddedframework/*.framework"
    ss.vendored_libraries = "APDGoogleAdMobAdapter.embeddedframework/*.a"
    ss.frameworks = "AudioToolbox", "CoreMedia", "CoreMotion", "CoreVideo", "EventKitUI", "GLKit", "MessageUI", "OpenGLES"
    ss.dependency 'Appodeal/Core'
  end

  s.subspec 'InMobiAdapter' do |ss|
    ss.vendored_frameworks = "APDInMobiAdapter.embeddedframework/*.framework"
    ss.vendored_libraries = "APDInMobiAdapter.embeddedframework/*.a"
    ss.libraries = "sqlite3.0"
    ss.frameworks = "AudioToolbox", "EventKitUI", "Foundation", "MessageUI"
    ss.dependency 'Appodeal/Core'
  end

  s.subspec 'MyTargetAdapter' do |ss|
    ss.vendored_frameworks = "APDMyTargetAdapter.embeddedframework/*.framework"
    ss.vendored_libraries = "APDMyTargetAdapter.embeddedframework/*.a"
    ss.frameworks = "CoreMedia", "SafariServices"
    ss.dependency 'Appodeal/Core'
  end

  s.subspec 'PubnativeAdapter' do |ss|
    ss.vendored_libraries = "APDPubnativeAdapter.embeddedframework/*.a"
    ss.dependency 'Appodeal/Core'
  end

  s.subspec 'StartAppAdapter' do |ss|
    ss.vendored_frameworks = "APDStartAppAdapter.embeddedframework/*.framework"
    ss.vendored_libraries = "APDStartAppAdapter.embeddedframework/*.a"
    ss.resources = "APDStartAppAdapter.embeddedframework/Resources/*"
    ss.libraries = "z"
    ss.frameworks = "CoreMedia"
    ss.dependency 'Appodeal/Core'
  end

  s.subspec 'TapjoyAdapter' do |ss|
    ss.vendored_frameworks = "APDTapjoyAdapter.embeddedframework/*.framework"
    ss.vendored_libraries = "APDTapjoyAdapter.embeddedframework/*.a"
    ss.resources = "APDTapjoyAdapter.embeddedframework/Resources/*"
    ss.libraries = "sqlite3.0", "z", "c++"
    ss.frameworks = "CoreData", "CFNetwork", "CoreMotion", "Foundation", "MapKit", "MessageUI", "EventKitUI"
    ss.weak_frameworks = "StoreKit"
    ss.dependency 'Appodeal/Core'
  end

  s.subspec 'TwitterMoPubAdapter' do |ss|
    ss.vendored_frameworks = "APDTwitterMoPubAdapter.embeddedframework/*.framework"
    ss.resources = "APDTwitterMoPubAdapter.embeddedframework/Resources/*"
    ss.vendored_libraries = "APDTwitterMoPubAdapter.embeddedframework/*.a"
    ss.frameworks = "CoreMedia", "Foundation", "SafariServices"
    ss.weak_frameworks = "StoreKit"
    ss.dependency 'Appodeal/Core'
  end

  s.subspec 'UnityAdapter' do |ss|
    ss.vendored_frameworks = "APDUnityAdapter.embeddedframework/*.framework"
    ss.vendored_libraries = "APDUnityAdapter.embeddedframework/*.a"
    ss.frameworks = "CFNetwork", "CoreMedia"
    ss.dependency 'Appodeal/Core'
  end

  s.subspec 'VungleAdapter' do |ss|
    ss.vendored_frameworks = "APDVungleAdapter.embeddedframework/*.framework"
    ss.vendored_libraries = "APDVungleAdapter.embeddedframework/*.a"
    ss.libraries = "z", "sqlite3"
    ss.frameworks = "AudioToolbox", "CFNetwork", "CoreMedia"
    ss.dependency 'Appodeal/Core'
  end

  s.subspec 'YandexAdapter' do |ss|
    ss.vendored_frameworks = "APDYandexAdapter.embeddedframework/*.framework"
    ss.vendored_libraries = "APDYandexAdapter.embeddedframework/*.a"
    ss.libraries = "c++", "z", "sqlite3"
    ss.dependency 'Appodeal/Core'
  end

  s.subspec 'FlurryAdapter' do |ss|
    ss.vendored_frameworks = "APDFlurryAdapter.embeddedframework/*.framework"
    ss.vendored_libraries = "APDFlurryAdapter.embeddedframework/*.a"
    ss.dependency 'Appodeal/Core'
  end


  s.subspec 'IronSource' do |ss|
    ss.vendored_libraries = "APDIronSourceAdapter.embeddedframework/*.a"
    ss.vendored_frameworks = "APDIronSourceAdapter.embeddedframework/*.framework"
    ss.dependency 'Appodeal/Core'
  end

end
