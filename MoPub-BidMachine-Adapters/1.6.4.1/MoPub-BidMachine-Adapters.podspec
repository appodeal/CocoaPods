Pod::Spec.new do |spec|

  spec.name         = "MoPub-BidMachine-Adapters"
  spec.version      = "1.6.4.1"
  spec.summary      = "BidMachine IOS adapter for MoPub mediation"
  spec.description  = <<-DESC
  Supported ad formats: Banner, Interstitial, Rewarded Video.\n
                   DESC
  spec.homepage     = "https://github.com/bidmachine/BidMachine-MoPub-iOS-Adapters"
  spec.license      = { :type => 'Apache License, Version 2.0', :text => <<-LICENSE
  Copyright 2019 Appodeal, Inc.
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
    LICENSE
}

  spec.author       = { "Appodeal" => "http://www.appodeal.com" }
  spec.platform     = :ios, '10.0'
  spec.source       = { :git => "https://github.com/bidmachine/BidMachine-IOS-MoPub-Adapter.git", :branch => "master" }

  spec.source_files = 'Adapter/**/*.{h,m}'
  spec.static_framework = true

  spec.pod_target_xcconfig = {
    "VALID_ARCHS": "arm64 armv7 armv7s x86_64",
    "VALID_ARCHS[sdk=iphoneos*]": "arm64 armv7 armv7s",
    "VALID_ARCHS[sdk=iphonesimulator*]": "x86_64"
  }
  spec.user_target_xcconfig = {
    "VALID_ARCHS": "arm64 armv7 armv7s x86_64",
    "VALID_ARCHS[sdk=iphoneos*]": "arm64 armv7 armv7s",
    "VALID_ARCHS[sdk=iphonesimulator*]": "x86_64"
  }

  spec.dependency 'BidMachine', '1.6.4'
  spec.dependency 'mopub-ios-sdk', '5.16.1'
end
