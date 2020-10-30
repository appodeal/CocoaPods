
Pod::Spec.new do |spec|
	spec.name  			= "APDBidMachineAdapter"
	spec.version 		= "2.8.1.1-Beta.1"
	spec.summary 		= "Appodeal adapter for BidMachine"
	spec.description = <<-DESC
    Appodeal’s supply-side platform is designed and built by veteran publishers,for publishers. Appodeal is not an ad network; it is a new approach to monetizing for publishers.
  The platform is a large auction house, accompanied by a mediation layer, that exposes a publisher’s inventory to all available buyers on the market via relationships with every major ad network, RTB exchange, and DSP. Appodeal showcases publisher inventory to the advertiser, and offers the highest rate in real time.
  Appodeal's goal is to cater to the needs of the publisher, not the advertiser, so you always know that you're in good hands.
                   DESC
	spec.homepage     = "https://appodeal.com"
	spec.license      = { :type => "Copyright", :text => "Copyright 2019. Appodeal, Inc." }
	spec.author       = { "Appodeal, Inc" => "https://appodeal.com" }

	spec.platform     = :ios, "9.0"
	spec.source       = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/Appodeal/Modular/#{spec.name}/#{spec.version}/#{spec.name}.zip" }
	
	spec.static_framework 	= true
	spec.swift_versions 		= "4.0", "4.2", "5.0"	
	spec.source_files 			= "Dummy.swift"
	spec.default_subspec 		= 'HeaderBidding'
  
  spec.dependency "Appodeal", "2.8.1-Beta"

  spec.pod_target_xcconfig = { 
    "EXCLUDED_ARCHS[sdk=iphonesimulator*]": "arm64 arm64e armv7 armv7s",
    "EXCLUDED_ARCHS[sdk=iphoneos*]": "i386 x86_64"
  }

  spec.user_target_xcconfig = { 
    "EXCLUDED_ARCHS[sdk=iphonesimulator*]": "arm64 arm64e armv7 armv7s",
    "EXCLUDED_ARCHS[sdk=iphoneos*]": "i386 x86_64"
  }

	spec.subspec 'Core' do |ss|
    ss.vendored_libraries = "#{spec.name}.embeddedframework/lib#{spec.name}.a", "#{spec.name}.embeddedframework/libBDMIABAdapter.a"
    ss.source_files       = "Dummy.swift"
	  ss.dependency 'BidMachine', '1.7.0.0-beta'
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
  end	

  spec.subspec 'Facebook' do |ss|
  	ss.vendored_libraries = "#{spec.name}.embeddedframework/libBDMFacebookAdapter.a"
    ss.source_files       = "Dummy.swift"
  	ss.dependency "#{spec.name}/Core"
  	ss.dependency "FBAudienceNetwork", "6.2.0"
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
  	ss.dependency "AdColony", "4.4.1.1"
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
  	ss.dependency "CriteoPublisherSdk", "3.4.1"
  end 

  spec.subspec 'MyTarget' do |ss|
  	ss.vendored_libraries = "#{spec.name}.embeddedframework/libBDMMyTargetAdapter.a"
    ss.source_files       = "Dummy.swift"
  	ss.dependency "#{spec.name}/Core"
  	ss.dependency "myTargetSDK", "5.9.3"
  end 

  spec.subspec 'Smaato' do |ss|
  	ss.vendored_libraries = "#{spec.name}.embeddedframework/libBDMSmaatoAdapter.a"
    ss.source_files       = "Dummy.swift"
  	ss.dependency "#{spec.name}/Core"
  	ss.dependency "smaato-ios-sdk", "21.6.6"
  end 

  spec.subspec 'Vungle' do |ss|
  	ss.vendored_libraries = "#{spec.name}.embeddedframework/libBDMVungleAdapter.a"
    ss.source_files       = "Dummy.swift"
  	ss.dependency "#{spec.name}/Core"
  	ss.dependency "VungleSDK-iOS", "6.8.1"
  end 
end
	
