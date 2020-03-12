Pod::Spec.new do |spec|
  spec.name         = "FatAppodeal"
  spec.version      = "2.6.2"
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
  spec.source       = { 
    :http => "https://appodeal-ios.s3-us-west-1.amazonaws.com/Appodeal/Fat/2.6.2-Custom/Appodeal.zip"
  }
  
  spec.requires_arc = true
  spec.vendored_frameworks = 'Appodeal.framework'

  spec.resources        = 'Resources/*.bundle'
  spec.source_files     = "Dummy.swift"
  spec.swift_versions   = "4.0", "4.2", "5.0"

  spec.frameworks       = 'Security', 'CoreMedia', 'CoreGraphics', 'CoreImage', 'SystemConfiguration', 'AVFoundation', 'MediaPlayer', 'QuartzCore', 'UIKit', 'WebKit', 'ImageIO', 'MobileCoreServices', 'CoreTelephony', 'CoreLocation'
  spec.weak_frameworks  = 'AdSupport', 'StoreKit'
  spec.libraries        = 'z', 'xml2'

  spec.dependency 'Protobuf'
  # spec.dependency 'Google-Mobile-Ads-SDK', '~> 7.53'
  spec.dependency 'FBSDKCoreKit', '~> 5.6'
end