Pod::Spec.new do |spec|
  spec.name                     = "BidMachineIronSourcePlugin"
  spec.version                  = "0.0.2"
  spec.summary                  = "BidMachineIronSourcePlugin iOS"

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

  spec.source = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/#{spec.name}/#{spec.version}/#{spec.name}.zip" }

  spec.vendored_frameworks = 'BidMachineIronSourcePlugin.xcframework' 
  spec.dependency 'BidMachine'
  spec.dependency 'IronSourceSDK'

end