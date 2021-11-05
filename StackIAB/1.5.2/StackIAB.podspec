Pod::Spec.new do |s|
  s.name         = 'StackIAB' 
  s.version      = '1.5.2' 
  s.summary      = 'IAB Display Managers modules for Stack products' 
  s.description  = <<-DESC
                   Includes display managers for MRAID 2.0 (pending), VAST 3.0 and NAST 1.0
                   DESC

  s.homepage     = 'http://www.appodeal.com' 
  s.license      = { :type => 'GPL 3.0', :file => 'LICENSE' }
  s.author       = { 'Stack'  => 'http://www.explorestack.com'  }
  s.source       = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/StackIAB/v#{s.version}/StackIAB.zip"  }
  s.platform     = :ios, '9.0'

  s.dependency 'StackModules', '~> 1.1.7'
  s.source_files = "Dummy.swift"
  s.swift_versions = "4.0", "4.2", "5.0"
  s.static_framework = true

  s.subspec 'StackXML' do |ss|
    ss.vendored_frameworks = 'StackXML.framework' 
    ss.library = 'xml2'
  end

  s.subspec 'StackIABAssets' do |ss|
    ss.vendored_frameworks = 'StackIABAssets.framework' 
  end

  s.subspec 'StackOpenMeasure' do |ss|
    ss.vendored_frameworks = 'StackOpenMeasure.framework' 
  end

  s.subspec 'StackMRAIDKit' do |ss| 
    ss.vendored_frameworks = 'StackMRAIDKit.framework' 
    ss.framework = 'WebKit'
    ss.dependency 'StackIAB/StackIABAssets'
    ss.dependency 'StackIAB/StackOpenMeasure'
  end

  s.subspec 'StackVideoPlayer' do |ss|
    ss.vendored_frameworks = 'StackVideoPlayer.framework' 
    ss.framework = 'AVFoundation'
  end

  s.subspec 'StackRichMedia' do |ss|
    ss.vendored_frameworks = 'StackRichMedia.framework' 
    ss.dependency 'StackIAB/StackVASTAssets'
    ss.dependency 'StackIAB/StackVideoPlayer'
    ss.dependency 'StackIAB/StackIABAssets'
  end

  s.subspec 'StackVASTAssets' do |ss|
    ss.vendored_frameworks = 'StackVASTAssets.framework' 
    ss.dependency 'StackIAB/StackXML'
    ss.dependency 'StackIAB/StackIABAssets'
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
end