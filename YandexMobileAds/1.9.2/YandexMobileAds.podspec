Pod::Spec.new do |s|
  s.name = "YandexMobileAds"
  s.version = "1.9.2"
  s.summary = "This library is designed to be a part of mobile apps and provide interface to enable ads in app"

  s.homepage = "http://appmetrica.yandex.com/"
  s.license = { :type => 'PROPRIETARY', :file => 'YandexMobileAdsSDK/LICENSE.txt' }
  s.authors = { "Andrey Shender" => "ashender@yandex-team.ru", "Kanstantsin Charnukha" => "xardas@yandex-team.ru" }
  s.platform = :ios, '6.0'
  s.source = { :http => "https://s3.amazonaws.com/appodeal-externalsdk/yandex/1.9.2/YandexMobileAdsSDK.zip" }

  s.source_files = 'YandexMobileAdsSDK/YandexMobileAds/**/*.h'
  s.header_mappings_dir = 'YandexMobileAdsSDK/YandexMobileAds'
  s.public_header_files = "YandexMobileAdsSDK/YandexMobileAds/**/*.h"
  s.vendored_library = 'YandexMobileAdsSDK/libYandexMobileAds.a'

  s.libraries = 'xml2'

  s.dependency 'TOWebViewController', '2.1.1'
  s.dependency 'ColorArt'
  s.frameworks = 'CoreTelephony', 'AdSupport'

  s.requires_arc = true
end
