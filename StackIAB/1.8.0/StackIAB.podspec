Pod::Spec.new do |s|
  s.name         = 'StackIAB' 
  s.version      = '1.8.0' 
  s.summary      = 'IAB Display Managers modules for Stack products' 
  s.description  = <<-DESC
                   Includes display managers for MRAID 2.0 (pending), VAST 3.0 and NAST 1.0
                   DESC

  s.homepage     = "https://appodeal.com" 
  s.license      = { :type => 'GPL 3.0', :file => 'LICENSE' }
  s.author       = { 'Stack'  => 'http://www.explorestack.com'  }
  s.source       = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/StackIAB/v#{s.version}/StackIAB.zip"  }
  s.platform     = :ios, '10.0'

  s.dependency 'StackModules', '~> 1.2.1'
  s.source_files = "Dummy.swift"
  s.swift_versions = "4.0", "4.2", "5.0"
  s.static_framework = true

  s.pod_target_xcconfig = {
    "VALID_ARCHS[sdk=iphoneos*]": "arm64 armv7",
    "VALID_ARCHS[sdk=iphonesimulator*]": "arm64 x86_64",
  }

  s.user_target_xcconfig = {
    "OTHER_LDFLAGS": '-ObjC'
  }

  s.subspec 'StackXML' do |ss|
    ss.vendored_frameworks = 'StackXML.xcframework' 
    ss.library = 'xml2'
  end

  s.subspec 'StackIABAssets' do |ss|
    ss.vendored_frameworks = 'StackIABAssets.xcframework' 
  end

  s.subspec 'StackOpenMeasure' do |ss|
    ss.vendored_frameworks = 'StackOpenMeasure.xcframework' 
    ss.dependency 'OMSDK_Appodeal', '~> 1.3.27'
  end

  s.subspec 'StackMRAIDKit' do |ss| 
    ss.vendored_frameworks = 'StackMRAIDKit.xcframework' 
    ss.framework = 'WebKit'
    ss.dependency 'StackIAB/StackIABAssets'
    ss.dependency 'StackIAB/StackOpenMeasure'
  end

  s.subspec 'StackVideoPlayer' do |ss|
    ss.vendored_frameworks = 'StackVideoPlayer.xcframework' 
    ss.framework = 'AVFoundation'
  end

  s.subspec 'StackRichMedia' do |ss|
    ss.vendored_frameworks = 'StackRichMedia.xcframework' 
    ss.dependency 'StackIAB/StackVASTAssets'
    ss.dependency 'StackIAB/StackVideoPlayer'
    ss.dependency 'StackIAB/StackIABAssets'
  end

  s.subspec 'StackVASTAssets' do |ss|
    ss.vendored_frameworks = 'StackVASTAssets.xcframework' 
    ss.dependency 'StackIAB/StackXML'
    ss.dependency 'StackIAB/StackIABAssets'
  end

  s.subspec 'StackVASTKit' do |ss|
    ss.vendored_frameworks = 'StackVASTKit.xcframework' 
    ss.dependency 'StackIAB/StackVASTAssets'
    ss.dependency 'StackIAB/StackVideoPlayer'
    ss.dependency 'StackIAB/StackMRAIDKit'
  end

  s.subspec 'StackNASTKit' do |ss|
    ss.vendored_frameworks = 'StackNASTKit.xcframework' 
    ss.dependency 'StackIAB/StackVASTKit'
  end 
end
