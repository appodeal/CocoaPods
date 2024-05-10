Pod::Spec.new do |spec|
  spec.name                     = "BidMachineRendering"
  spec.version                  = "0.2.0-Beta.0"
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
    ss.resources = "BidMachineRenderingKit.bundle"
    ss.vendored_frameworks = 'BidMachineRenderingKit.xcframework' 
    ss.dependency 'BidMachineRendering/UtilsKit'
    ss.dependency 'BidMachineRendering/WebKit'
    ss.dependency 'BidMachineRendering/VideoKit'
    ss.dependency 'BidMachineRendering/StoreKit'
    ss.dependency 'BidMachineRendering/MeasureKit'
   end

   spec.subspec 'UtilsKit' do |ss|
    ss.resources = "BidMachineUtilsKit.bundle"
    ss.vendored_frameworks = 'BidMachineUtilsKit.xcframework'
    ss.dependency 'StackModules', '~> 1.7.0'
   end

   spec.subspec 'WebKit' do |ss|
    ss.resources = "BidMachineWebKit.bundle"
    ss.vendored_frameworks = 'BidMachineWebKit.xcframework'
    ss.dependency 'BidMachineRendering/UtilsKit'
   end

   spec.subspec 'VideoKit' do |ss|
    ss.resources = "BidMachineVideoKit.bundle"
    ss.vendored_frameworks = 'BidMachineVideoKit.xcframework'
    ss.dependency 'BidMachineRendering/UtilsKit'
   end

   spec.subspec 'StoreKit' do |ss|
    ss.resources = "BidMachineStoreKit.bundle"
    ss.vendored_frameworks = 'BidMachineStoreKit.xcframework'
    ss.dependency 'BidMachineRendering/UtilsKit'
   end

   spec.subspec 'MeasureKit' do |ss|
    ss.vendored_frameworks = 'BidMachineMeasureKit.xcframework'
    ss.dependency 'BidMachineRendering/UtilsKit'
    ss.dependency 'OMSDK_Appodeal', '~> 1.4.12'
   end

end
