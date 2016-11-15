Pod::Spec.new do |s|

  s.name         = "RevMobAds"
  s.version      = "9.2.3"
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
  s.source       = { :http => "https://s3-eu-west-1.amazonaws.com/uploads-eu.hipchat.com/35497/2440054/ECelxVpxBx1rdS3/RevMobAds.framework.zip" }

  s.vendored_frameworks = "RevMobAds.framework"

  s.frameworks = "AdSupport", "CoreTelephony", "SystemConfiguration"
end
