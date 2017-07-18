Pod::Spec.new do |s|

  s.name         = "Avocarrot"
  s.version      = "4.5.0"
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
  s.source       = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/external-sdks/Avocarrot/4.5.0/Avocarrot.framework.zip" }

  s.vendored_frameworks = "Avocarrot.framework"

  s.frameworks = "AdSupport", "CoreTelephony", "SystemConfiguration"
end
