Pod::Spec.new do |s|

  s.name         = "Avocarrot"
  s.version      = "4.2.6"
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
  s.source       = { :http => "https://s3.amazonaws.com/appodeal-externalsdk/avocarrot/AvocarrotSDK.framework-4.2.6-g.zip" }

  s.vendored_frameworks = "AvocarrotSDK.framework"

  s.frameworks = "AdSupport", "CoreTelephony", "SystemConfiguration"
end
