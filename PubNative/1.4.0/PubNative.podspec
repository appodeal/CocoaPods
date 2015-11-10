Pod::Spec.new do |s|

  s.name         = "PubNative"
  s.version      = "1.4.0"
  s.summary      = "pubnative-ios-library is a collection of Open Source tools to implement API based native ads in iOS."

  s.description  = <<-DESC
PubNative is an API-based publisher platform dedicated to native advertising which does not require the integration of an SDK.
Through PubNative, publishers can request over 20 parameters to enrich their ads and thereby create any number of combinations for unique and truly native ad units.
                   DESC

  s.homepage     = "http://pubnative.net"
  s.license      = { :type => 'MIT', :file => 'LICENSE'  }
  s.author       = { "PubNative Inc." => "info@pubnative.net" }
  s.platform     = :ios, "6.1"
  s.source       = { :git => "https://github.com/pubnative/pubnative-ios-library.git", :tag => "#{s.version}"}

  s.source_files = "PubNativeLibrary/**/*.{h,m}"

end
