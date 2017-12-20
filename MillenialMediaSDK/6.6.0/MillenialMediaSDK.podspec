Pod::Spec.new do |s|

  s.name         = "MillenialMediaSDK"
  s.version      = "6.6.0"
  s.summary      = "Millenial Media ios SDK"

  s.description  = <<-DESC
                   Millenial Media advertising network.
                   DESC

  s.homepage     = "http://www.millennialmedia.com"


  s.license      = { :type => 'Commercial', :text => <<-LICENSE
License text here
    LICENSE
  }

  s.author       = { "Millenial Media" => "http://www.millennialmedia.com/sdk6" }

  s.platform     = :ios
  s.source       = { :http => 'https://s3-us-west-1.amazonaws.com/appodeal-ios/external-sdks/MillenialMedia/6.6.0/MMAdSDK.framework.zip' }

  s.ios.vendored_frameworks = "MMAdSDK.framework"
  #s.resource  = "";


  s.frameworks = "AdSupport", "AudioToolbox", "AVFoundation", "CoreBluetooth", "CoreGraphics", "CoreLocation", "CoreTelephony", "EventKit", "EventKitUI", "Foundation", "MediaPlayer", "MessageUI", "StoreKit", "SystemConfiguration", "UIKit"
  s.libraries = "xml2"
end
