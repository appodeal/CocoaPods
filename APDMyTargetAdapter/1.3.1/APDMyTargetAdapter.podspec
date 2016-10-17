Pod::Spec.new do |s|
  s.name         = "APDMyTargetAdapter"
  s.version      = "1.3.1"
  s.summary      = "myTargetSDK adapter for Appodeal SDK"

  s.description  = <<-DESC
  Appodeal’s supply-side platform is designed and built by veteran publishers,for publishers. Appodeal is not an ad network; it is a new approach to monetizing for publishers.
  The platform is a large auction house, accompanied by a mediation layer, that exposes a publisher’s inventory to all available buyers on the market via relationships with every major ad network, RTB exchange, and DSP. Appodeal showcases publisher inventory to the advertiser, and offers the highest rate in real time.
  Appodeal's goal is to cater to the needs of the publisher, not the advertiser, so you always know that you're in good hands.

                   DESC

  s.homepage     = "https://appodeal.com"
  s.license      = { :type => 'Copyright 2016 Appodeal Inc.', :text => <<-LICENSE
                      Copyright 2016
                      LICENSE
                  }
  s.author             = { "Appodeal, Inc." => "http://appodeal.com" }
  s.platform     = :ios, '8.0'


  s.source       = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/1.3.1/adapters/APDMyTargetAdapter.embeddedframework.zip" }

  s.vendored_frameworks = "APDMyTargetAdapter.embeddedframework/*.framework"
  s.vendored_libraries = "APDMyTargetAdapter.embeddedframework/*.a"

  s.frameworks =
    "AdSupport",
    "StoreKit",
    "SystemConfiguration",
    "CoreGraphics",
    "CoreTelephony",
    "AVFoundation",
    "CoreLocation",
    "CoreMedia"

  s.weak_frameworks = "Foundation"

  s.dependency 'Appodeal', '~> 1.2'

end
