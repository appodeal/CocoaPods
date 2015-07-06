Pod::Spec.new do |s|

  s.name         = "UnityAds"
  s.version      = "1.4.7"
  s.summary      = "Unity Ads SDK for iOS"

  s.description  = <<-DESC
                   Unity Ads SDK for iOS.
                   DESC

  s.homepage     = "https://github.com/Applifier/unity-ads-sdk"

  s.license      = { :type => 'Apache License, Version 2.0', :text => <<-LICENSE
    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
    LICENSE
  }

  s.author             = { "Unity Technologies" => "applifier-sales@unity3d.com" }

  s.platform     = :ios
  # s.platform     = :ios, "5.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"

  s.source       = { :git => "https://github.com/Applifier/unity-ads-sdk.git", :tag => s.version }
  s.ios.vendored_frameworks = 'UnityAds.framework'
  s.resource  = "UnityAds.bundle"

  s.frameworks = "AdSupport", "StoreKit", "CoreTelephony"

end
