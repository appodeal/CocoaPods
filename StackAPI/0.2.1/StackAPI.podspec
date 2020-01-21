Pod::Spec.new do |spec|
  spec.name         = "StackAPI"
  spec.version      = "0.2.1"
  spec.summary      = "Provides API models for iOS Stack products"

  spec.description  = <<-DESC
  Provides API models for iOS Stack products. Includes Objective-C models for Appodeal, BidMachine and DataCore SDKs
                   DESC

  spec.homepage     = "https://explorestack.com"
  spec.license      = { :type => "GPL 3", 
                        :file => "LICENSE" }
  spec.author       = { "stack ios team" => "https://explorestack.com" }
  spec.platform     = :ios, "9.0"

  spec.source       = { :git => 'git@github.com:appodeal/StackProtoAPI-iOS.git',
                        :tag => "v#{spec.version}" }

  spec.dependency 'Protobuf', '~> 3.8'

  spec.subspec 'Appodeal' do |sp|
    sp.source_files = "Appodeal/**/*.{h,m}"
    sp.public_header_files = "Appodeal/**/*.{h}"
  end

  spec.subspec 'BidMachine' do |sp|
    sp.source_files = "Stack/bidmachine/**/*.{h,m}"
    sp.public_header_files = "Stack/bidmachine/**/*.{h}"
  end

  spec.subspec 'DataCore' do |sp|
    sp.source_files = "Stack/datacore/**/*.{h,m}"
    sp.public_header_files = "Stack/datacore/**/*.{h}"
    sp.dependency 'StackAPI/BidMachine'
  end

  spec.requires_arc = false
  spec.pod_target_xcconfig = {
    "GCC_PREPROCESSOR_DEFINITIONS" => "$(inherited) GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS=1"
  }
  spec.user_target_xcconfig = {
    "GCC_PREPROCESSOR_DEFINITIONS" => "$(inherited) GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS=1"
  }
end
