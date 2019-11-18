Pod::Spec.new do |spec|
  spec.name         = "StackConsentDialog"
  spec.version      = "1.1.2"
  spec.summary      = "GDPR consent dialog"

  spec.description  = <<-DESC
                   Supported modules for Stack iOS products
                   DESC

  spec.homepage     = "http://www.appodeal.com"

  spec.license      = { :type => 'GPL 3.0', :file => 'LICENSE' }
  spec.author       = { "Stack" => "http://www.explorestack.com" }

  spec.platform     = :ios, '9.0'
  spec.source       = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/StackConsentDialog/v#{spec.version}/StackConsentDialog.zip" }

  spec.static_framework = true
  spec.swift_versions = '4.0', '4.2', '5.0'

  spec.vendored_frameworks = 'StackConsentDialog.framework'
  spec.public_header_files = "StackConsentDialog.framework/Headers/*.h"
  spec.source_files = "StackConsentDialog.framework/Headers/*.h"
  spec.user_target_xcconfig = { "LIBRARY_SEARCH_PATHS" => "$(inherited) $(TOOLCHAIN_DIR)/usr/lib/swift/$(PLATFORM_NAME) $(TOOLCHAIN_DIR)/usr/lib/swift-5.0/$(PLATFORM_NAME)" }

  spec.dependency 'StackModules/StackFoundation', '~> 0.6'
  spec.dependency 'StackModules/StackUIKit', '~> 0.6'
  spec.dependency 'PersonalizedAdConsent', '~> 1.0'
end
