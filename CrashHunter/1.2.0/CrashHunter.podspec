Pod::Spec.new do |s|

  s.name         = "CrashHunter"
  s.version      = "1.2.0"
  s.summary      = "Podspec for building SDK independent part of fat Appodeal distribution via CocoaPods Packager Plugin. Developers ONLY!"

  s.description  = <<-DESC
Appodeal’s supply-side platform is designed and built by veteran publishers,for publishers. Appodeal is not an ad network; it is a new approach to monetizing for publishers.
The platform is a large auction house, accompanied by a mediation layer, that exposes a publisher’s inventory to all available buyers on the market via relationships with every major ad network, RTB exchange, and DSP. Appodeal showcases publisher inventory to the advertiser, and offers the highest rate in real time.
Appodeal's goal is to cater to the needs of the publisher, not the advertiser, so you always know that you're in good hands.
DESC

  s.homepage     = "http://appodeal.com"
  s.license      = { :type => 'Appodeal Privacy Policy', :file => 'LICENSE.md'  }
  s.author       = { "Appodeal, Inc." => "http://appodeal.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/CrashHunter/#{s.version}/CrashHunter.zip" }

  s.vendored_frameworks = 'CrashHunter.framework'
                   
  s.ios.libraries = 'c++', 'z'
  s.ios.frameworks = 'MessageUI', 'SystemConfiguration', 'MobileCoreServices', 'Security', 'SystemConfiguration', 'AdSupport'
  s.dependency 'StackModules', '>= 0.7'
 end
