
Pod::Spec.new do |spec|
	spec.name  			= "APDBidMachineAdapter"
	spec.version 		= "2.10.3.1"
	spec.summary 		= "Appodeal adapter for BidMachine"
	spec.description = <<-DESC
    Appodeal’s supply-side platform is designed and built by veteran publishers,for publishers. Appodeal is not an ad network; it is a new approach to monetizing for publishers.
  The platform is a large auction house, accompanied by a mediation layer, that exposes a publisher’s inventory to all available buyers on the market via relationships with every major ad network, RTB exchange, and DSP. Appodeal showcases publisher inventory to the advertiser, and offers the highest rate in real time.
  Appodeal’s goal is to cater to the needs of the publisher, not the advertiser, so you always know that you’re in good hands.
                   DESC
	spec.homepage     = "https://appodeal.com"
	spec.license      = { :type => "Copyright", :text => "Copyright 2019. Appodeal, Inc." }
	spec.author       = { "Appodeal, Inc" => "https://appodeal.com" }

	spec.platform     = :ios, "10.0"
	spec.source       = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/Appodeal/Modular/#{spec.name}/#{spec.version}/#{spec.name}.zip" }
	
	spec.static_framework 	= true
	spec.swift_versions 		= "4.0", "4.2", "5.0"	
	spec.source_files 			= "Dummy.swift"
	spec.default_subspec 		= "HeaderBidding"
  
  spec.dependency "Appodeal", "2.10.3"

	spec.subspec "Core" do |ss|
    ss.vendored_libraries = "#{spec.name}.embeddedframework/lib#{spec.name}.a", "#{spec.name}.embeddedframework/libBDMIABAdapter.a"
    ss.source_files       = "Dummy.swift"
	  ss.dependency "BidMachine", "1.8.0.0"
	  ss.dependency "BDMIABAdapter", "~> 1.8.0.0"
	end

  spec.subspec "HeaderBidding" do |ss|
    ss.dependency "#{spec.name}/Core"
    ss.dependency "#{spec.name}/Criteo"
    ss.dependency "#{spec.name}/Pangle"
  end	

  spec.subspec "Criteo" do |ss|
    ss.dependency "BDMCriteoAdapter", "~> 1.8.0.0"
  end 

  spec.subspec "Pangle" do |ss|
    ss.dependency "BDMPangleAdapter", "~> 1.8.0.0"
  end 
end
	
