Pod::Spec.new do |s|
  s.name = "CrashHunter"
  s.version = "1.15.18.1"
  s.summary = "Podspec for building SDK independent part of fat Appodeal distribution via CocoaPods Packager Plugin. Developers ONLY!"
  s.license = {"type"=>"Appodeal Privacy Policy", "file"=>"LICENSE.md"}
  s.authors = {"Appodeal, Inc."=>"http://appodeal.com"}
  s.homepage = "http://appodeal.com"
  s.description = "Appodeal\u{2019}s supply-side platform is designed and built by veteran publishers,for publishers. Appodeal is not an ad network; it is a new approach to monetizing for publishers.\nThe platform is a large auction house, accompanied by a mediation layer, that exposes a publisher\u{2019}s inventory to all available buyers on the market via relationships with every major ad network, RTB exchange, and DSP. Appodeal showcases publisher inventory to the advertiser, and offers the highest rate in real time.\nAppodeal's goal is to cater to the needs of the publisher, not the advertiser, so you always know that you're in good hands."
  s.source = { http: "https://s3-us-west-1.amazonaws.com/appodeal-ios/external-sdks/CrashHunter/1.15.18.1/CrashHunter.framework.zip" }

  s.ios.deployment_target    = '9.0'
  s.ios.vendored_framework   = 'CrashHunter.framework'
  s.ios.libraries = 'c++', 'z'
  s.ios.frameworks = 'MessageUI', 'SystemConfiguration', 'MobileCoreServices', 'Security', 'SystemConfiguration', 'AdSupport'
end