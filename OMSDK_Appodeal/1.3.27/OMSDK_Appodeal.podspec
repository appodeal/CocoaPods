Pod::Spec.new do |spec|
  spec.name                     = "OMSDK_Appodeal"
  spec.version                  = "1.3.27"
  spec.summary                  = "Open measure sdk for Appodeal"

  spec.description              = <<-DESC
                                Appodeal’s supply-side platform is designed and built by veteran publishers,for publishers. Appodeal is not an ad network; it is a new approach to monetizing for publishers.
                                The platform is a large auction house, accompanied by a mediation layer, that exposes a publisher’s inventory to all available buyers on the market via relationships with every major ad network, RTB exchange, and DSP. Appodeal showcases publisher inventory to the advertiser, and offers the highest rate in real time.
                                Appodeal's goal is to cater to the needs of the publisher, not the advertiser, so you always know that you're in good hands.
                                DESC

  spec.homepage                 = "https://bidmachine.io"
  spec.license                  = { :type => 'GPL 3.0', :file => 'LICENSE' }
  spec.author                   = { "Stack" => "https://explorestack.com/bidmachine/" }

  spec.platform                 = :ios, '10.0'
  spec.source                   = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/external-sdks/OMSDK_Appodeal/#{spec.version}/OMSDK_Appodeal.zip" }

  spec.vendored_frameworks 		  = "OMSDK_Appodeal.xcframework"
  spec.frameworks               = "AdSupport"
  spec.libraries                = "z"
end