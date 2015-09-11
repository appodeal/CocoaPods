Pod::Spec.new do |s|

  s.name         = "StartApp"
  s.version      = "3.1.0"
  s.summary      = "StartApp SDK for iOS"

  s.description  = <<-DESC
                   StartApp SDK for iOS.
                   DESC

  s.homepage     = "https://www.startapp.com"

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

  s.author             = { "StartApp" => "https://www.startapp.com" }

  s.platform     = :ios
  # s.platform     = :ios, "5.0"

  s.source       = { :http => "https://s3.amazonaws.com/appodeal-externalsdk/StartAppSDK.zip" }
  s.vendored_frameworks = "StartAppSDK/StartApp.framework"
  s.resource  = "StartAppSDK/StartApp.bundle"

  s.frameworks = "AdSupport", "StoreKit", "CoreTelephony", "SystemConfiguration", "CoreGraphics", "QuartzCore", "CoreMedia", "AVFoundation"
  s.library = "z"

end
