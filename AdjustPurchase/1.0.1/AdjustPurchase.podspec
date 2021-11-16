Pod::Spec.new do |s|
  s.name           = "AdjustPurchase"
  s.version        = "1.0.1"
  s.summary        = "This is the iOS purchase SDK of adjust. You can read more about it at http://adjust.com."
  s.homepage       = "http://adjust.com"
  s.license        = { :type => 'MIT', :file => 'MIT-LICENSE' }
  s.author         = { "Ugljesa Erceg" => "ugi@adjust.com" }
  s.source         = { :git => "https://github.com/adjust/ios_purchase_sdk.git", :tag => "v1.0.0" }
  s.platform       = :ios, "10.0"
  s.framework      = 'SystemConfiguration'
  s.requires_arc   = true
  s.source       = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/AdjustPurchase/#{s.version}/AdjustPurchase.zip" }
  s.vendored_frameworks = 'AdjustPurchase.xcframework'
end
