Pod::Spec.new do |s|

  s.name         = "Avocarrot"
  s.version      = "3.4.3"
  s.summary      = "Avocarrot iOS SDK"

  s.description  = <<-DESC
                   Avocarrot iOS SDK.
                   DESC

  s.homepage     = "http://www.avocarrot.com"


  s.license      = { :type => 'Commercial', :text => <<-LICENSE
License text here
    LICENSE
  }

  s.author       = { "Avocarrot" => "http://www.avocarrot.com/contact/" }

  s.platform     = :ios
  s.source       = { :http => "https://s3.amazonaws.com/appodeal-externalsdk/avocarrot/Avocarrot-iOS-sdk-3.4.3.zip" }

  s.vendored_frameworks = "Avocarrot-iOS-sdk/AvocarrotSDK.framework"

  s.frameworks = "AdSupport", "CoreTelephony", "SystemConfiguration"
end
