Pod::Spec.new do |s|
  s.name         = "DataCoreSDK"
  s.version      = "0.1.0-Beta"
  s.summary      = "DataCore iOS SDK"

  s.description  = <<-DESC
                   Unleash the missing link to acquire more users with high ROI at scale.
                   DESC

  s.homepage     = "https://explorestack.com"
  s.license      =  { :type => 'GPL 3.0', :file => 'LICENSE' }
  s.author       = { "Stack" => "https://explorestack.com" }

  s.platform     = :ios, '9.0'
  s.source       = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/DataCoreSDK/#{s.version}/DataCoreSDK-iOS-#{s.version}.zip" }

  s.vendored_frameworks = "DataCoreSDK.framework"
  s.library = 'z'
  s.frameworks = 'CoreTelephony', 'SystemConfiguration', 'AdSupport', 'WebKit', 'CoreLocation'
  s.dependency 'StackAPI/DataCore', '~> 0.0.3'
end