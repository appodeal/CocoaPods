Pod::Spec.new do |spec|
  spec.name                     = "OMSDK_Bidmachineio"
  spec.version                  = "1.4.10"
  spec.summary                  = "Open measure SDK for BidMachine"

  spec.homepage                 = "https://bidmachine.io"
  spec.license                  = { :type => 'Commercial', :text => 'https://bidmachine.io/sdk-license-agreement/' }
  spec.author                   = { "Stack" => "https://explorestack.com/bidmachine/" }

  spec.platform                 = :ios, '10.0'
  
  spec.source                   = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/external-sdks/OMSDK_Bidmachineio/#{spec.version}/OMSDK_Bidmachineio.zip" }
  spec.vendored_frameworks      = "OMSDK_Bidmachineio.xcframework"
  spec.frameworks               = "AdSupport"
end