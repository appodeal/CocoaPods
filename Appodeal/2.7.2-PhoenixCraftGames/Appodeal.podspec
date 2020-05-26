Pod::Spec.new do |spec|
  spec.name         = "Appodeal"
  spec.version      = "2.7.2-PhoenixCraftGames"
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
  spec.source       = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/Appodeal/Modular/Appodeal/#{spec.version}/Appodeal.zip" }

  spec.requires_arc = true

  spec.vendored_frameworks = 'Appodeal.framework'

  spec.dependency 'StackIAB/StackNASTKit', '~> 0.5.10'
  spec.dependency 'StackIAB/StackVASTKit', '~> 0.5.10'
  spec.dependency 'StackIAB/StackRichMedia', '~> 0.5.10'
  spec.dependency 'StackModules', '~> 0.7.1'
  spec.dependency 'Protobuf', '~> 3.9'
  spec.dependency 'StackAPI/Appodeal', '~> 0.2.0'
  
  spec.frameworks       = 'Security', 'CoreMedia', 'CoreGraphics', 'CoreImage', 'SystemConfiguration', 'AVFoundation', 'MediaPlayer', 'QuartzCore', 'UIKit', 'WebKit', 'ImageIO', 'MobileCoreServices', 'CoreTelephony', 'CoreLocation'
  spec.weak_frameworks  = 'AdSupport', 'StoreKit'
  spec.libraries        = 'z', 'xml2'
end