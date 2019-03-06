Pod::Spec.new do |spec|
	spec.name ='InneractiveAdSDK'
	spec.version = '7.2.1'
	spec.authors = 'Fyber'
	spec.summary = 'Fyber VAMP SDK'
	spec.description  = <<-DESC
	Fyber VAMP SDK - Video Advertising Monetization Platform for iOS devices
	DESC
	spec.homepage = 'http://developer.inner-active.com/v1.0/docs/integrating-ios-sdk'
	spec.license = { :type => 'Copyright', :text => 'Copyright 2018 Fyber, All rights reserved.' }
	spec.source = { :http => 'https://s3-us-west-1.amazonaws.com/appodeal-ios/external-sdks/InneractiveAdSDK/7.2.1/InneractiveAdSDK.zip' }

	spec.platform = :ios

	spec.subspec 'IASDKCore' do |core|
		core.name ='IASDKCore'
		core.vendored_frameworks = 'IASDKCore/IASDKCore.framework'
		core.resource = 'IASDKCore/IASDKResources.bundle'

		core.ios.frameworks = 'SystemConfiguration', 'CoreGraphics', 'EventKit', 'EventKitUI', 'MediaPlayer', 'MessageUI', 'CoreTelephony', 'StoreKit', 'AdSupport', 'AVFoundation', 'CoreMedia', 'WebKit'
		core.ios.library = 'xml2.2'
		core.ios.source_files = 'IASDKCore/SwiftIntegration/IASDKCore-Bridging-Header.h'
		core.ios.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }
	end

	spec.subspec 'IASDKMRAID' do |display|
		display.name ='IASDKMRAID'
		display.vendored_frameworks = 'IASDKMRAID/IASDKMRAID.framework'
		display.ios.dependency 'InneractiveAdSDK/IASDKCore'
	end

	spec.subspec 'IASDKVideo' do |video|
	    video.name ='IASDKVideo'
	    video.vendored_frameworks = 'IASDKVideo/IASDKVideo.framework'
		video.ios.dependency 'InneractiveAdSDK/IASDKCore'
	end

	spec.subspec 'IASDKNative' do |native|
	    native.name ='IASDKNative'
	    native.vendored_frameworks = 'IASDKNative/IASDKNative.framework'
		native.ios.dependency 'InneractiveAdSDK/IASDKCore'
		native.ios.dependency 'InneractiveAdSDK/IASDKVideo'
	end
end
