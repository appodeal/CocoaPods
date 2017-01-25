Pod::Spec.new do |s|

  s.name         = "CrashHunter"
  s.version      = "1.15.1-beta"
  s.summary      = "Podspec for building SDK independent part of fat Appodeal distribution via CocoaPods Packager Plugin. Developers ONLY!"

  s.description  = <<-DESC
Appodeal’s supply-side platform is designed and built by veteran publishers,for publishers. Appodeal is not an ad network; it is a new approach to monetizing for publishers.
The platform is a large auction house, accompanied by a mediation layer, that exposes a publisher’s inventory to all available buyers on the market via relationships with every major ad network, RTB exchange, and DSP. Appodeal showcases publisher inventory to the advertiser, and offers the highest rate in real time.
Appodeal's goal is to cater to the needs of the publisher, not the advertiser, so you always know that you're in good hands.
DESC

  s.homepage     = "http://appodeal.com"
  s.license      = { :type => 'Appodeal Privacy Policy', :file => 'LICENSE.md'  }
  s.author       = { "Appodeal, Inc." => "http://appodeal.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/appodeal/CrashHunter-iOS.git", :tag => "v#{s.version}", :submodules => true}

  s.source_files = 'CrashHunter/*.{h,m}'

  s.exclude_files = 'CrashHunter-iOS/CrashHunterSample/**/*.{h,m}',
                    'CrashHunter-iOS/CrashHunterTests/**/*.{h,m}',
                    'CrashHunter-iOS/dSYMUploader/**/*.{h,m}'

  s.dependency 'AFNetworking', '~> 3.0'
  s.dependency 'KSCrash', '1.15.1'
  s.dependency 'KSCrash/Recording', '1.15.1'

 end
