Pod::Spec.new do |spec|
  sourceName               = "BDMSmaatoAdapter"
  adapterPath              = "1"
  sdkPath                  = "1.9.5"
  networkVersion           = "21.7.8"

  spec.name                = "#{sourceName}"
  spec.version             = "#{sdkPath}.#{adapterPath}"
  spec.summary             = "Bidmachine adapter for Smaato"

  spec.homepage            = "https://bidmachine.io"
  spec.license             = { :type => 'GPL 3.0', :file => 'LICENSE' }
  spec.author              = { "Stack" => "https://explorestack.com/bidmachine/" }

  spec.platform            = :ios, "10.0"
  spec.swift_version       = "5.1"

  spec.pod_target_xcconfig = {
    "VALID_ARCHS": "arm64 armv7 x86_64",
    "VALID_ARCHS[sdk=iphoneos*]": "arm64 armv7",
    "VALID_ARCHS[sdk=iphonesimulator*]": "arm64 x86_64"
  }

  spec.source = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/BidMachineAdaptors/#{sourceName}/#{spec.version}/#{sourceName}.zip" }
  spec.vendored_frameworks = "#{sourceName}.xcframework"

  spec.dependency "BidMachine", "~> #{sdkPath}.0"
  spec.dependency "smaato-ios-sdk", "#{networkVersion}"
  spec.dependency "smaato-ios-sdk/Modules/UnifiedBidding", "#{networkVersion}"
end