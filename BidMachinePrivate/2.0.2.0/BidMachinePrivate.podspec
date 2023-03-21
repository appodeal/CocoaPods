Pod::Spec.new do |spec|
  spec.name                     = "BidMachinePrivate"
  spec.version                  = "2.0.2.0"
  spec.summary                  = "BidMachine iOS SDK"

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

  spec.source                   = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/#{spec.name}/#{spec.version}/#{spec.name}.zip" }
  spec.vendored_frameworks = "BidMachine.xcframework", "BidMachineAdapterCore.xcframework"

  spec.dependency 'StackIAB', '~> 2.0.7'
  spec.dependency 'StackModules', '~> 1.4.2'

  spec.dependency 'BidMachineApiCore', '~> 0.3.0-Beta.0'
  spec.dependency 'BidMachineProtoCore', '~> 0.3.0-Beta.0'
  spec.dependency 'BidMachineNetworkCore', '~> 0.3.0-Beta.0'
  spec.dependency 'BidMachineDisplayCore', '~> 0.4.0-Beta.0'
  spec.dependency 'BidMachineBiddingCore', '~> 0.3.0-Beta.0'
  spec.dependency 'BidMachineAnalyticsCore', '~> 0.4.0-Beta.0'
end
