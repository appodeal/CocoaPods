Pod::Spec.new do |spec|
  spec.name                     = "BidMachineNetworkCore"
  spec.version                  = "0.0.1"
  spec.summary                  = "BidMachine iOS SDK"

  spec.description              = <<-DESC
                                Appodeal’s supply-side platform is designed and built by veteran publishers,for publishers. Appodeal is not an ad network; it is a new approach to monetizing for publishers.
                                The platform is a large auction house, accompanied by a mediation layer, that exposes a publisher’s inventory to all available buyers on the market via relationships with every major ad network, RTB exchange, and DSP. Appodeal showcases publisher inventory to the advertiser, and offers the highest rate in real time.
                                Appodeal's goal is to cater to the needs of the publisher, not the advertiser, so you always know that you're in good hands.
                                DESC

  spec.homepage                 = "https://bidmachine.io"
  spec.license                  = { :type => 'GPL 3.0', :file => 'LICENSE' }
  spec.author                   = { "Stack" => "https://explorestack.com/bidmachine/" }

  spec.platform                 = :ios, '10.0'
  spec.source                   = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/BidMachineNetworkCore/#{spec.version}/BidMachineNetworkCore.zip" }
  spec.swift_versions           = "4.0", "4.2", "5.0"
  spec.swift_version            = "5.0"
  spec.requires_arc             = true
  
  spec.pod_target_xcconfig = {
    "VALID_ARCHS[sdk=iphoneos*]": "arm64 armv7",
    "VALID_ARCHS[sdk=iphonesimulator*]": "arm64 x86_64"
  }

  spec.default_subspec = 'Core'
  spec.subspec 'Core' do |ss|
    ss.vendored_frameworks = "BidMachineNetworkCore.xcframework"
    ss.dependency 'BidMachineApiCore', '~> 0.0.1'
  end
  
end
