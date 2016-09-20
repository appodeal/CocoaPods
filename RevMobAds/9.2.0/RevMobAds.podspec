Pod::Spec.new do |s|

  s.name         = "RevMobAds"
  s.version      = "9.2.0"
  s.summary      = "RevMobAds iOS SDK"

  s.description  = <<-DESC
                   RevMobAds iOS SDK.
                   DESC

  s.homepage     = "https://revmobmobileadnetwork.com"


  s.license      = { :type => 'Commercial', :text => <<-LICENSE
License text here
    LICENSE
  }

  s.author       = { "Avocarrot" => "https://revmobmobileadnetwork.com" }

  s.platform     = :ios, '8.0'
  s.source       = { :http => "https://s3.amazonaws.com/appodeal-externalsdk/revmob/RevMobAds.framework-9.2.0.zip" }

  s.vendored_frameworks = "RevMobAds.framework"

  s.frameworks = "AdSupport", "CoreTelephony", "SystemConfiguration"
end
