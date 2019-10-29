Pod::Spec.new do |spec|

  spec.name         = "GoogleMobileAds-BidMachine-Adapters"
  spec.version      = "1.3.3.0-UG1"
  spec.summary      = "BidMachine IOS adapter for GoogleMobileAds mediation"
  spec.description  = <<-DESC
  Supported ad formats: Banner, Interstitial, Rewarded Video.\n
                   DESC
  spec.homepage     = "https://github.com/bidmachine/BidMachine-Google-Mobile-Ads-iOS-Adapters"
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
  spec.platform     = :ios, '9.0'
  spec.source       = { :git => "https://github.com/appodeal/BidMachine-Google-Mobile-Ads-iOS-Adapters.git", :tag => "v#{spec.version}" }

  spec.source_files = 'BidMachineAdapter/**/*.{h,m}'
  spec.static_framework = true

  spec.dependency 'BidMachine', '1.3.3'
  spec.dependency 'Google-Mobile-Ads-SDK', '7.51.0'
end
