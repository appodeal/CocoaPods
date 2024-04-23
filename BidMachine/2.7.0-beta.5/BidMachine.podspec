Pod::Spec.new do |spec|
  spec.name                     = "BidMachine"
  spec.version                  = "2.7.0-beta.5"
  spec.summary                  = "BidMachine iOS SDK"

  spec.homepage                 = "https://bidmachine.io"
  spec.license                  = { :type => 'Commercial', :text => 'https://bidmachine.io/sdk-license-agreement/' }
  spec.author                   = { "Stack" => "https://explorestack.com/bidmachine/" }

  spec.platform                 = :ios, '12.0'
  spec.swift_version            = "5.1"
  
  spec.source = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/#{spec.name}/#{spec.version}/#{spec.name}.zip" }

  spec.default_subspec = 'Dynamic'

  spec.subspec 'Static' do |ss|
    ss.vendored_frameworks = 'Static/BidMachine.xcframework'
    ss.resource_bundles = {
      'BidMachine' => ['Static/BidMachine.xcframework/ios-arm64/**/PrivacyInfo.xcprivacy'],
    }
    ss.dependency 'StackModules/Static', '2.0.0-beta.4'
  end
  
  spec.subspec 'Dynamic' do |ss|
    ss.vendored_frameworks = 'Dynamic/BidMachine.xcframework'
    ss.dependency 'StackModules/Dynamic', '2.0.0-beta.4'
  end
end
