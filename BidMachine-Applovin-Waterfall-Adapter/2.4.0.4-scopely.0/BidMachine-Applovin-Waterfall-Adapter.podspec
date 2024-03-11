Pod::Spec.new do |spec|
  spec.name                     = "BidMachine-Applovin-Waterfall-Adapter"
  spec.version                  = "2.4.0.4-scopely.0"
  spec.summary                  = "BidMachine iOS Applovin MAX Adapter"

  spec.homepage                 = "https://bidmachine.io"
  spec.license                  = { :type => 'Commercial', :text => 'https://bidmachine.io/sdk-license-agreement/' }
  spec.author                   = { "Stack" => "https://explorestack.com/bidmachine/" }

  spec.platform                 = :ios, '12.0'
  spec.swift_version            = "5.1"
  
  spec.pod_target_xcconfig = {
    "VALID_ARCHS": "arm64 x86_64",
    "VALID_ARCHS[sdk=iphoneos*]": "arm64",
    "VALID_ARCHS[sdk=iphonesimulator*]": "arm64 x86_64"
  }

  spec.source                   = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/BidMachineMaxAdapter/#{spec.version}/BidMachineMaxAdapter.zip" }

  spec.vendored_frameworks = 'BidMachineMaxAdapter.xcframework' 
  spec.dependency 'BidMachine', '2.4.0.4-scopely.0'
  spec.dependency 'AppLovinSDK'

end
