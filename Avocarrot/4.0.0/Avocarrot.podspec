Pod::Spec.new do |s|

  s.name         = "Avocarrot"
  s.version      = "4.0.0"
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
  s.source       = { :http => "http://file-st14.karelia.ru/28zrvq/8742ab84bec89622c16101f95a3e37aa/17207a7344987fdad3cd10a7e9ba642f/AvocarrotSDK.zip" }

  s.vendored_frameworks = "AvocarrotSDK.framework"

  s.frameworks = "AdSupport", "CoreTelephony", "SystemConfiguration"
end
