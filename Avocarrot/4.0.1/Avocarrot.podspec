Pod::Spec.new do |s|

  s.name         = "Avocarrot"
  s.version      = "4.0.1"
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

  s.platform     = :ios, '8.0'
  s.source       = { :http => "https://s3-eu-west-1.amazonaws.com/uploads-eu.hipchat.com/35497/2440054/1w0BZT8vCbcTRSv/AvocarrotSDK.zip" }

  s.vendored_frameworks = "AvocarrotSDK.framework"

  s.frameworks = "AdSupport", "CoreTelephony", "SystemConfiguration"
end
