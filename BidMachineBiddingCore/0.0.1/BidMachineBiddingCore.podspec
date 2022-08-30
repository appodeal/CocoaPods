Pod::Spec.new do |spec|
  spec.name                     = "BidMachineBiddingCore"
  spec.version                  = "0.0.1"
  spec.summary                  = "Bidding module"

  spec.homepage                 = "https://bidmachine.io"
  spec.license                  = { :type => 'GPL 3.0', :file => 'LICENSE' }
  spec.author                   = { "Stack" => "https://explorestack.com/bidmachine/" }

  spec.platform                 = :ios, '10.0'
  spec.swift_version            = "5.1"
  
  spec.pod_target_xcconfig = {
    "VALID_ARCHS": "arm64 armv7 x86_64",
    "VALID_ARCHS[sdk=iphoneos*]": "arm64 armv7",
    "VALID_ARCHS[sdk=iphonesimulator*]": "arm64 x86_64"
  }

  spec.source = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/BidMachineBiddingCore/#{spec.version}/BidMachineBiddingCore.zip" }
  spec.vendored_frameworks = "BidMachineBiddingCore.xcframework"
  spec.dependency 'BidMachineApiCore', '~> 0.0.1'
  
end
