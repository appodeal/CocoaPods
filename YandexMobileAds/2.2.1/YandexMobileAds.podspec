Pod::Spec.new do |s|
  s.name = "YandexMobileAds"
  s.version = "2.2.1"
  s.summary = "This library is designed to be a part of mobile apps and provide interface to enable ads in app"

  s.homepage = "http://appmetrica.yandex.com/"
  s.license = { :type => 'PROPRIETARY', :file => 'YandexMobileAdsSDK/LICENSE.txt' }
  s.authors = { "Andrey Shender" => "ashender@yandex-team.ru", "Kanstantsin Charnukha" => "xardas@yandex-team.ru" }
  s.platform = :ios, '6.0'
  s.source = { :http => "https://s3.amazonaws.com/appodeal-externalsdk/yandex/ads/2.2.1/yandex-ads-sdk-ios-master-2.2.1.zip" }

  s.source_files = 'yandex-ads-sdk-ios-master/SDK/YandexMobileAds/**/*.h'
  s.header_mappings_dir = 'yandex-ads-sdk-ios-master/SDK/YandexMobileAds/'
  s.public_header_files = "yandex-ads-sdk-ios-master/SDK/YandexMobileAds/**/*.h"
  s.vendored_library = 'yandex-ads-sdk-ios-master/SDK/libYandexMobileAds.a'

  s.libraries = 'xml2'

  s.dependency 'TOWebViewController', '2.1.1'
  s.dependency 'ColorArt'
  s.frameworks = 'CoreTelephony', 'AdSupport'

  s.requires_arc = true
end
