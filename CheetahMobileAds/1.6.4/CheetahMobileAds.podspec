Pod::Spec.new do |s|

  s.name         = "CheetahMobileAds"
  s.version      = "1.6.4"
  s.summary      = "Pegasi SDK is a mobile advertising SDK that serves monitization for publishers."
  s.homepage     = "https://github.com/CMAdSDK/pegasi-ios-sdk.git"
  s.author       = { "cmcm.ads" => "cmcm.ads@gmail.com" }
  s.source       = { :git => 'https://github.com/CMAdSDK/pegasi-ios-sdk.git', :tag => s.version, :submodules => true }
  s.platform     = :ios, "7.0"

  s.frameworks   = "AdSupport", "CoreTelephony", "StoreKit", "CoreLocation", "Security", "SystemConfiguration"
  s.source_files = "CheetahMobileAds/include/*.h"
  s.resources    = "CheetahMobileAds/include/CheetahMobileAds.bundle"
  s.public_header_files = "CheetahMobileAds/include/*.h"

  s.vendored_libraries = 'CheetahMobileAds/libCheetahMobileAds.a'
  s.preserve_paths = "CheetahMobileAds/libCheetahMobileAds.a"

  s.requires_arc = true
  
end
