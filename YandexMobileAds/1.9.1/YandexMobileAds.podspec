Pod::Spec.new do |s|
  s.name = "YandexMobileAds"
  s.version = "1.9.1"
  s.summary = "This library is designed to be a part of mobile apps and provide interface to enable ads in app"

  s.homepage = "http://appmetrica.yandex.com/"
  s.license = { :type => 'PROPRIETARY', :file => 'LICENSE.txt' }
  s.authors = { "Andrey Shender" => "ashender@yandex-team.ru", "Kanstantsin Charnukha" => "xardas@yandex-team.ru" }
  s.platform = :ios, '6.0'
  s.source = { :http => "https://s3.amazonaws.com/appodeal-externalsdk/YandexMobileAdsSDK.zip" }

  s.source_files = 'YandexMobileAdsSDK/YandexMobileAds/**/*.h'
  s.header_mappings_dir = 'YandexMobileAdsSDK/YandexMobileAds'
  s.public_header_files = "YandexMobileAdsSDK/YandexMobileAds/**/*.h"
  s.vendored_library = 'YandexMobileAdsSDK/libYandexMobileAds.a'
  
  s.libraries = 'xml2'

  s.dependency 'YandexMobileMetrica', '2.0.0'
  s.dependency 'TOWebViewController'
  s.dependency 'ColorArt'
  s.frameworks = 'CoreTelephony', 'AdSupport'

  s.requires_arc = true
end
