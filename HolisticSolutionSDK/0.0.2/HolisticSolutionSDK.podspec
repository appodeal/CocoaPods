Pod::Spec.new do |spec|
  spec.name         = "HolisticSolutionSDK"
  spec.version      = "0.0.2"
  spec.summary      = "The HolisticSolutionSDK provides easy to use API for integration attribution, product testing and advertising platform."
  spec.description  = <<-DESC
  The Holistic Solution SDK is iOS framework. It provides easy to use API for integration attribution, product testing and advertising platform.
  It contains AppsFlyer, Firebase Remote Config, Appodeal connectors. The framework allows to send all data to Stack Holistic Solution service without 
  additional synchronisation code.
                   DESC
  spec.homepage     = "https://explorestack.com"
  spec.license      = "MIT"
  spec.author       = { "appodeal" => "https://appodeal.com" }
  spec.platform     = :ios, "9.0"

  spec.source       = { :git => "https://github.com/appodeal/DataCore-Sample-iOS.git", :tag => "v#{spec.version}" }

  spec.requires_arc = true
  spec.static_framework = true
  spec.swift_versions = "4.0", "4.2", "5.0", "5.1", "5.2"
  spec.default_subspecs = "Full"


  spec.subspec "Core" do |ss|
  	ss.source_files  = "HolisticSolutionSDK/**/*.{h,swift}"
  	ss.exclude_files = 
  		"HolisticSolutionSDK/Appodeal",
  		"HolisticSolutionSDK/AppsFlyer",
  		"HolisticSolutionSDK/Firebase",
      "HolisticSolutionSDK/Facebook"
  end

  spec.subspec "Appodeal" do |ss|
    ss.source_files	= "HolisticSolutionSDK/Appodeal"
    ss.dependency "HolisticSolutionSDK/Core"
    ss.dependency "Appodeal", ">= 2.6"
  end

  spec.subspec "AppsFlyer" do |ss|
    ss.source_files = "HolisticSolutionSDK/AppsFlyer"
    ss.dependency "HolisticSolutionSDK/Core"
    ss.dependency "AppsFlyerFramework", ">= 5.3"
  end

  spec.subspec "Firebase" do |ss|
    ss.source_files = "HolisticSolutionSDK/Firebase"
    ss.dependency "HolisticSolutionSDK/Core"
    ss.dependency "Firebase/Core", ">= 6.20"
    ss.dependency "Firebase/Analytics", ">= 6.20"
  	ss.dependency "Firebase/RemoteConfig", ">= 4.4"
  end

  spec.subspec "Facebook" do |ss|
    ss.source_files = "HolisticSolutionSDK/Facebook"
    ss.dependency "HolisticSolutionSDK/Core"
    ss.dependency "FBSDKCoreKit", ">= 6.0"
  end

  spec.subspec "Full" do |ss| 
  	ss.dependency "HolisticSolutionSDK/Core"
  	ss.dependency "HolisticSolutionSDK/Appodeal"
  	ss.dependency "HolisticSolutionSDK/AppsFlyer"
  	ss.dependency "HolisticSolutionSDK/Firebase"
    ss.dependency "HolisticSolutionSDK/Facebook"
  end
end
