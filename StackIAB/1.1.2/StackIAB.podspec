Pod::Spec.new do |s|
  s.name         = 'StackIAB' 
  s.version      = '1.1.2' 
  s.summary      = 'IAB Display Managers modules for Stack products' 
  s.description  = <<-DESC
                   Includes display managers for MRAID 2.0 (pending), VAST 3.0 and NAST 1.0
                   DESC

  s.homepage     = 'http://www.appodeal.com' 
  s.license      = { :type => 'GPL 3.0', :file => 'LICENSE' }
  s.author       = { 'Stack'  => 'http://www.explorestack.com'  }
  s.source       = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/StackIAB/v#{s.version}/StackIAB.zip"  }
  s.platform     = :ios, '9.0'

  s.dependency 'StackModules', '~> 1.0.0'

  s.pod_target_xcconfig = {
    "EXCLUDED_ARCHS[sdk=iphonesimulator*]": "arm64 arm64e armv7 armv7s",
    "EXCLUDED_ARCHS[sdk=iphoneos*]": "i386 x86_64"
  }

  s.user_target_xcconfig = {
    "EXCLUDED_ARCHS[sdk=iphonesimulator*]": "arm64 arm64e armv7 armv7s",
    "EXCLUDED_ARCHS[sdk=iphoneos*]": "i386 x86_64"
  }

  s.subspec 'StackXML' do |ss|
    ss.vendored_frameworks = 'StackXML.framework' 
    ss.library = 'xml2'
  end

  s.subspec 'StackMRAIDKit' do |ss| 
    ss.vendored_frameworks = 'StackMRAIDKit.framework' 
    ss.framework = 'WebKit'
  end

  s.subspec 'StackVideoPlayer' do |ss|
    ss.vendored_frameworks = 'StackVideoPlayer.framework' 
    ss.framework = 'AVFoundation'
  end

  s.subspec 'StackRichMedia' do |ss|
    ss.vendored_frameworks = 'StackRichMedia.framework' 
    ss.dependency 'StackIAB/StackVASTAssets'
    ss.dependency 'StackIAB/StackVideoPlayer'
  end

  s.subspec 'StackVASTAssets' do |ss|
    ss.vendored_frameworks = 'StackVASTAssets.framework' 
    ss.dependency 'StackIAB/StackXML'
  end

  s.subspec 'StackVASTKit' do |ss|
    ss.vendored_frameworks = 'StackVASTKit.framework' 
    ss.dependency 'StackIAB/StackVASTAssets'
    ss.dependency 'StackIAB/StackVideoPlayer'
    ss.dependency 'StackIAB/StackMRAIDKit'
  end

  s.subspec 'StackNASTKit' do |ss|
    ss.vendored_frameworks = 'StackNASTKit.framework' 
    ss.dependency 'StackIAB/StackVASTKit'
  end 

  s.pod_target_xcconfig      = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 arm64e armv7 armv7s', 'EXCLUDED_ARCHS[sdk=iphoneos*]' => 'i386 x86_64' }
  s.user_target_xcconfig     = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 arm64e armv7 armv7s', 'EXCLUDED_ARCHS[sdk=iphoneos*]' => 'i386 x86_64' }
end