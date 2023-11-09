Pod::Spec.new do |spec|
  spec.name                     = "StackIAB"
  spec.version                  = "2.3.4-Beta"
  spec.summary                  = "IAB Display Managers modules for Stack products"

  spec.homepage                 = "https://bidmachine.io"
  spec.license                  = { :type => 'Commercial', :text => 'https://bidmachine.io/sdk-license-agreement/' }
  spec.author                   = { "Stack" => "https://explorestack.com/bidmachine/" }

  spec.platform                 = :ios, '10.0'
  spec.swift_version            = "5.1"
  
  spec.pod_target_xcconfig = {
    "VALID_ARCHS": "arm64 armv7 x86_64",
    "VALID_ARCHS[sdk=iphoneos*]": "arm64 armv7",
    "VALID_ARCHS[sdk=iphonesimulator*]": "arm64 x86_64"
  }

  spec.source                   = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/#{spec.name}/#{spec.version}/#{spec.name}.zip" }
  spec.dependency 'StackModules', '~> 1.6.0'
  spec.static_framework = true

  spec.user_target_xcconfig = {
    "OTHER_LDFLAGS": '-ObjC'
  }

  spec.subspec 'StackXML' do |ss|
    ss.vendored_frameworks = 'StackXML.xcframework' 
    ss.library = 'xml2'
  end

  spec.subspec 'StackIABAssets' do |ss|
    ss.vendored_frameworks = 'StackIABAssets.xcframework' 
  end

  spec.subspec 'StackOpenMeasure' do |ss|
    ss.vendored_frameworks = 'StackOpenMeasure.xcframework' 
    ss.dependency 'OMSDK_Appodeal', '~> 1.4.2.0'
  end

  spec.subspec 'StackMRAIDKit' do |ss| 
    ss.vendored_frameworks = 'StackMRAIDKit.xcframework' 
    ss.framework = 'WebKit'
    ss.dependency 'StackIAB/StackIABAssets'
    ss.dependency 'StackIAB/StackOpenMeasure'
  end

  spec.subspec 'StackVideoPlayer' do |ss|
    ss.vendored_frameworks = 'StackVideoPlayer.xcframework' 
    ss.framework = 'AVFoundation'
  end

  spec.subspec 'StackRichMedia' do |ss|
    ss.vendored_frameworks = 'StackRichMedia.xcframework' 
    ss.dependency 'StackIAB/StackVASTAssets'
    ss.dependency 'StackIAB/StackVideoPlayer'
    ss.dependency 'StackIAB/StackIABAssets'
  end

  spec.subspec 'StackVASTAssets' do |ss|
    ss.vendored_frameworks = 'StackVASTAssets.xcframework' 
    ss.dependency 'StackIAB/StackXML'
    ss.dependency 'StackIAB/StackIABAssets'
  end

  spec.subspec 'StackVASTKit' do |ss|
    ss.vendored_frameworks = 'StackVASTKit.xcframework' 
    ss.dependency 'StackIAB/StackVASTAssets'
    ss.dependency 'StackIAB/StackVideoPlayer'
    ss.dependency 'StackIAB/StackMRAIDKit'
  end

  spec.subspec 'StackNASTKit' do |ss|
    ss.vendored_frameworks = 'StackNASTKit.xcframework' 
    ss.dependency 'StackIAB/StackVASTKit'
  end 
end
