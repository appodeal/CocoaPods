
Pod::Spec.new do |spec|
	spec.name  			= "APDBidMachineAdapter"
	spec.version 		= "2.9.1.2"
	spec.summary 		= "Appodeal adapter for BidMachine"
	spec.description = <<-DESC
    Appodeal’s supply-side platform is designed and built by veteran publishers,for publishers. Appodeal is not an ad network; it is a new approach to monetizing for publishers.
  The platform is a large auction house, accompanied by a mediation layer, that exposes a publisher’s inventory to all available buyers on the market via relationships with every major ad network, RTB exchange, and DSP. Appodeal showcases publisher inventory to the advertiser, and offers the highest rate in real time.
  Appodeal's goal is to cater to the needs of the publisher, not the advertiser, so you always know that you're in good hands.
                   DESC
	spec.homepage     = "https://appodeal.com"
	spec.license      = { :type => "Copyright", :text => "Copyright 2019. Appodeal, Inc." }
	spec.author       = { "Appodeal, Inc" => "https://appodeal.com" }

	spec.platform     = :ios, "10.0"
	spec.source       = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/Appodeal/Modular/#{spec.name}/#{spec.version}/#{spec.name}.zip" }
	
	spec.static_framework 	= true
	spec.swift_versions 		= "4.0", "4.2", "5.0"	
	spec.source_files 			= "Dummy.swift"
	spec.default_subspec 		= 'HeaderBidding'
  
  spec.dependency "Appodeal", "2.9.1"

  spec.pod_target_xcconfig = {
    "VALID_ARCHS": "arm64 armv7 armv7s x86_64",
    "VALID_ARCHS[sdk=iphoneos*]": "arm64 armv7 armv7s",
    "VALID_ARCHS[sdk=iphonesimulator*]": "x86_64"
  }

  spec.user_target_xcconfig = {
    "VALID_ARCHS": "arm64 armv7 armv7s x86_64",
    "VALID_ARCHS[sdk=iphoneos*]": "arm64 armv7 armv7s",
    "VALID_ARCHS[sdk=iphonesimulator*]": "x86_64"
  }

	spec.subspec 'Core' do |ss|
    ss.vendored_libraries = "#{spec.name}.embeddedframework/lib#{spec.name}.a", "#{spec.name}.embeddedframework/libBDMIABAdapter.a"
    ss.source_files       = "Dummy.swift"
	  ss.dependency 'BidMachine', '1.7.1'
	end

  spec.subspec 'HeaderBidding' do |ss|
    ss.dependency "#{spec.name}/Facebook"
    ss.dependency "#{spec.name}/Tapjoy"
    ss.dependency "#{spec.name}/AdColony"
    ss.dependency "#{spec.name}/Amazon"
    ss.dependency "#{spec.name}/Criteo"
    ss.dependency "#{spec.name}/MyTarget"
    ss.dependency "#{spec.name}/Smaato"
    ss.dependency "#{spec.name}/Vungle"
    ss.dependency "#{spec.name}/AppRoll"
  end	

  spec.subspec 'Facebook' do |ss|
  	ss.vendored_libraries = "#{spec.name}.embeddedframework/libBDMFacebookAdapter.a"
    ss.source_files       = "Dummy.swift"
  	ss.dependency "#{spec.name}/Core"
  	ss.dependency "FBAudienceNetwork", "6.3.1"
  end 

  spec.subspec 'Tapjoy' do |ss|
  	ss.vendored_libraries = "#{spec.name}.embeddedframework/libBDMTapjoyAdapter.a"
    ss.source_files       = "Dummy.swift"
  	ss.dependency "#{spec.name}/Core"
  	ss.dependency "TapjoySDK", "12.7.0"
  end 

  spec.subspec 'AdColony' do |ss|
  	ss.vendored_libraries = "#{spec.name}.embeddedframework/libBDMAdColonyAdapter.a"
    ss.source_files       = "Dummy.swift"
  	ss.dependency "#{spec.name}/Core"
  	ss.dependency "AdColony", "4.5.0"
  end 

  spec.subspec 'Amazon' do |ss|
  	ss.vendored_libraries = "#{spec.name}.embeddedframework/libBDMAmazonAdapter.a"
    ss.source_files       = "Dummy.swift"
  	ss.dependency "#{spec.name}/Core"
  	ss.dependency "AmazonPublisherServicesSDK", "3.3.0"
  end 

  spec.subspec 'Criteo' do |ss|
  	ss.vendored_libraries = "#{spec.name}.embeddedframework/libBDMCriteoAdapter.a"
    ss.source_files       = "Dummy.swift"
  	ss.dependency "#{spec.name}/Core"
  	ss.dependency "CriteoPublisherSdk", "4.0.1"
  end 

  spec.subspec 'MyTarget' do |ss|
  	ss.vendored_libraries = "#{spec.name}.embeddedframework/libBDMMyTargetAdapter.a"
    ss.source_files       = "Dummy.swift"
  	ss.dependency "#{spec.name}/Core"
  	ss.dependency "myTargetSDK", "5.10.2"
  end 

  spec.subspec 'Smaato' do |ss|
  	ss.vendored_libraries = "#{spec.name}.embeddedframework/libBDMSmaatoAdapter.a"
    ss.source_files       = "Dummy.swift"
  	ss.dependency "#{spec.name}/Core"
  	ss.dependency "smaato-ios-sdk", "21.6.8"
  end 

  spec.subspec 'Vungle' do |ss|
  	ss.vendored_libraries = "#{spec.name}.embeddedframework/libBDMVungleAdapter.a"
    ss.source_files       = "Dummy.swift"
  	ss.dependency "#{spec.name}/Core"
  	ss.dependency "VungleSDK-iOS", "6.9.1"
  end 

  spec.subspec 'AppRoll' do |ss|
  	ss.vendored_libraries = "#{spec.name}.embeddedframework/libBDMAppRollAdapter.a"
    ss.source_files       = "Dummy.swift"
  	ss.dependency "#{spec.name}/Core"
  	ss.dependency "AppRollSDK", "3.1.2"
  end 
end
	
