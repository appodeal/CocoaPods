Pod::Spec.new do |s|

  s.name         = "CheetahMobileAds"
  s.version      = "1.6.4"
  s.summary      = "Pegasi SDK is a mobile advertising SDK that serves monitization for publishers."
  s.homepage     = "https://github.com/CMAdSDK/pegasi-ios-sdk.git"
  s.author       = { "cmcm.ads" => "cmcm.ads@gmail.com" }
  s.source       = { :http => 'https://s3-eu-west-1.amazonaws.com/uploads-eu.hipchat.com/35497/2440054/rX3HfMO3Az5ASei/CheetahMobileAds.zip' }
  s.platform     = :ios, "7.0"

  s.frameworks   = "AdSupport", "CoreTelephony", "StoreKit", "CoreLocation", "Security", "SystemConfiguration"

  s.vendored_frameworks = "CheetahMobileAds.framework"
  s.resources    = "CheetahMobileAds.bundle"

  s.requires_arc = true

end
