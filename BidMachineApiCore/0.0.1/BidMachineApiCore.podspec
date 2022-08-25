Pod::Spec.new do |spec|
  spec.name                     = "BidMachineApiCore"
  spec.version                  = "0.0.1"
  spec.summary                  = "Protobuf module"

  spec.homepage                 = "https://bidmachine.io"
  spec.license                  = { :type => 'GPL 3.0', :file => 'BidMachineApiCoreRelease/LICENSE' }
  spec.author                   = { "Stack" => "https://explorestack.com/bidmachine/" }

  spec.platform                 = :ios, '10.0'
  spec.swift_versions           = "4.0", "4.2", "5.0"
  spec.swift_version            = "5.0"

   
  spec.source                   = { :git => 'https://github.com/bidmachine/BidMachine-IOS-API-Core.git', :tag => "v#{spec.version}" }
  spec.source_files             = "*/*.{swift}"
  
  spec.dependency 'SwiftProtobuf', '~> 1.0'
end