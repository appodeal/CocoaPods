Pod::Spec.new do |spec|
  spec.name                     = "BidMachineRendering"
  spec.version                  = "0.0.1-Beta.6"
  spec.summary                  = "BidMachine RenderingKit SDK"

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

  spec.default_subspec = 'RenderingKit'

  spec.subspec 'RenderingKit' do |ss|
    ss.vendored_frameworks = 'BidMachineRenderingKit.xcframework' 
    ss.dependency 'BidMachineRendering/UtilsKit'
    ss.dependency 'BidMachineRendering/WebKit'
    ss.dependency 'BidMachineRendering/VideoKit'
    ss.dependency 'BidMachineRendering/StoreKit'
   end

   spec.subspec 'UtilsKit' do |ss|
    ss.vendored_frameworks = 'BidMachineUtilsKit.xcframework'
    ss.dependency 'StackModules', '~> 1.6.0'
   end

   spec.subspec 'WebKit' do |ss|
    ss.vendored_frameworks = 'BidMachineWebKit.xcframework'
    ss.dependency 'BidMachineRendering/UtilsKit'
   end

   spec.subspec 'VideoKit' do |ss|
    ss.vendored_frameworks = 'BidMachineVideoKit.xcframework'
    ss.dependency 'BidMachineRendering/UtilsKit'
   end

   spec.subspec 'StoreKit' do |ss|
    ss.vendored_frameworks = 'BidMachineStoreKit.xcframework'
    ss.dependency 'BidMachineRendering/UtilsKit'
   end

end
