Pod::Spec.new do |spec|
  spec.name                     = "BidMachine"
  spec.version                  = "2.6.1-scopely.0"
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

  spec.source = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/#{spec.name}/#{spec.version}/#{spec.name}.zip" }

  spec.default_subspec = 'Core'

  spec.subspec 'Core' do |ss|
    ss.vendored_frameworks = 'BidMachine.xcframework' 
    ss.resource_bundle = { "BidMachine" => 'BidMachine.bundle/PrivacyInfo.xcprivacy' }
    ss.dependency 'BidMachine/ApiCore'
    ss.dependency 'BidMachine/BiddingCore'
    ss.dependency 'BidMachine/ModulesCore'
   end

   spec.subspec 'ApiCore' do |ss|
    ss.vendored_frameworks = 'BidMachineApiCore.xcframework' 
    ss.resource_bundle = { "BidMachineApiCore" => 'BidMachineApiCore.bundle/PrivacyInfo.xcprivacy' }
   end

   spec.subspec 'BiddingCore' do |ss|
    ss.vendored_frameworks = 'BidMachineBidding.xcframework' 
    ss.resource_bundle = { "BidMachineBidding" => 'BidMachineBidding.bundle/PrivacyInfo.xcprivacy' }
    ss.dependency 'BidMachine/ApiCore'
    ss.dependency 'BidMachineRendering', '0.1.0-scopely.0'
    ss.dependency 'StackIAB', '2.6.0-scopely.0'
    ss.dependency 'StackModules', '1.7.3-scopely.0'
   end

   spec.subspec 'ModulesCore' do |ss|
    ss.vendored_frameworks = 'BidMachineModules.xcframework'
    ss.resource_bundle = { "BidMachineModules" => 'BidMachineModules.bundle/PrivacyInfo.xcprivacy' }
    ss.dependency 'BidMachine/ApiCore'
   end

end
