Pod::Spec.new do |spec|
  spec.name         = "StackProtobuf"
  spec.version      = "0.7.1"
  spec.summary      = "Provides API models for iOS Stack products"

  spec.description  = <<-DESC
  Provides API models for iOS Stack products. Includes Objective-C models for Appodeal, BidMachine and DataCore SDKs
                   DESC

  spec.homepage     = "https://appodealstack.com"
  spec.license      = { 
    :type => "Copyright", 
    :text => "Copyright #{Time.new.year}. Appodeal, Inc." 
  }
  
  spec.author       = { "Stack iOS Team" => "https://appodealstack.com" }
  spec.platform     = :ios, "9.0"

  spec.source       = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/StackAPI/#{spec.version}/StackAPI.zip" }

  spec.dependency 'Protobuf', '~> 3.13'

  spec.vendored_frameworks = 'StackAPI.xcframework'

  spec.requires_arc = false
  spec.pod_target_xcconfig = {
    "GCC_PREPROCESSOR_DEFINITIONS" => "$(inherited) GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS=1"
  }
  spec.user_target_xcconfig = {
    "GCC_PREPROCESSOR_DEFINITIONS" => "$(inherited) GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS=1"
  }
end