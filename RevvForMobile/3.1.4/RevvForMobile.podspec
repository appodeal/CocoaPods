Pod::Spec.new do |s|

  s.name         = "RevvForMobile"
  s.version      = "3.1.4"
  s.summary      = "REVV for Mobile iPhone SDK."

  s.description  = <<-DESC
                   REVV for Mobile advertising network.
                   DESC

  s.homepage     = "http://rubiconproject.com/the-mobile-project/"


  s.license      = { :type => 'Commercial', :text => <<-LICENSE
License text here
    LICENSE
  }

  s.author       = { "Rubicon Project" => "http://rubiconproject.com/contact-us/" }

  s.platform     = :ios
  s.source       = { :http => 'http://madops.rubiconproject.com/sdk/RFM_SDK_3.1.4_iOS.zip' }

  s.ios.vendored_frameworks = "RFM_SDK_3.1.4_iOS/SDK/RFMAdSDK.framework"
  s.resource  = "RFM_SDK_3.1.4_iOS/SDK/RFMAdSDK.bundle"


  s.frameworks = "AdSupport", "AudioToolbox", "AVFoundation", "CoreGraphics", "CoreTelephony", "EventKit", "EventKitUI", "MediaPlayer", "MessageUI", "StoreKit", "StoreKit"
end
