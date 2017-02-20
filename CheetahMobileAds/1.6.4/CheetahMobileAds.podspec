Pod::Spec.new do |s|

  s.name         = "CheetahMobileAds"
  s.version      = "1.6.4"
  s.summary      = "Pegasi SDK is a mobile advertising SDK that serves monitization for publishers."
  s.homepage     = "https://github.com/CMAdSDK/pegasi-ios-sdk.git"
  s.author       = { "cmcm.ads" => "cmcm.ads@gmail.com" }
  s.source       = { :http => 'https://s3-us-west-1.amazonaws.com/appodeal-ios/2.0.0/CheetahMobileAds.zip' }
  s.platform     = :ios, "7.0"

  s.frameworks   = "AdSupport", "CoreTelephony", "StoreKit", "CoreLocation", "Security", "SystemConfiguration"

  s.vendored_frameworks = "CheetahMobileAds.framework"
  s.resources    = "CheetahMobileAds.bundle"

  s.requires_arc = true

end
