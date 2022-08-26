Pod::Spec.new do |spec|
  spec.name                     = "BidMachineApiCore"
  spec.version                  = "0.0.1"
  spec.summary                  = "Protobuf module"

  spec.homepage                 = "https://bidmachine.io"
  spec.license                  = { :type => 'GPL 3.0', :file => 'LICENSE' }
  spec.author                   = { "Stack" => "https://explorestack.com/bidmachine/" }

  spec.platform                 = :ios, '13.0'
  # spec.swift_versions           = "4.0", "4.2", "5.0"
  spec.swift_version            = "5.3"

   
  spec.pod_target_xcconfig = {
    "VALID_ARCHS": "arm64 armv7 x86_64",
    "VALID_ARCHS[sdk=iphoneos*]": "arm64 armv7",
    "VALID_ARCHS[sdk=iphonesimulator*]": "arm64 x86_64"
  }

  spec.source                   = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/BidMachineApiCore/#{spec.version}/BidMachineApiCore.zip" }
  spec.vendored_frameworks    = "BidMachineApiCore.xcframework", "SwiftProtobuf.xcframework"
  
  # spec.dependency 'SwiftProtobuf', '~> 1.0'
end