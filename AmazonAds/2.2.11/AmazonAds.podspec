Pod::Spec.new do |s|

  s.name         = "AmazonAds"
  s.version      = "2.2.11"
  s.summary      = "Amazon Ads SDK for iOS"

  s.description  = <<-DESC
                   Amazon Ads SDK for iOS.
                   DESC

  s.homepage     = "https://developer.amazon.com/public/apis/earn/mobile-ads/ios"

  s.license      = { :type => 'Commercial', :file => 'NOTICE.txt' }
  s.author       = { "Amazon.com, Inc." => "https://developer.amazon.com/public/support/contact/contact-us" }

  s.platform     = :ios

  s.source       = { :http => "https://s3.amazonaws.com/appodeal-externalsdk/amazonads/2.2.11/AmazonAd.zip" }
  s.vendored_frameworks = "AmazonAd.framework"

  s.frameworks = "AdSupport", "CoreLocation", "SystemConfiguration", "CoreTelephony", "CoreGraphics", "MediaPlayer", "EventKit", "EventKitUI"

end
