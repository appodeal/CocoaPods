Pod::Spec.new do |s|

  s.name         = "iVengo"
  s.version      = "121"
  s.summary      = "iVengo SDK for iOS"

  s.description  = <<-DESC
                   iVengo SDK for iOS.
                   DESC

  s.homepage     = "https://i-vengo.com/"

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

  s.author             = { "iVengo" => "https://i-vengo.com/" }

  s.platform     = :ios
  # s.platform     = :ios, "6.0"

  s.source       = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/external-sdks/IVengo/121/IvengoSDK.framework.zip" }
  s.vendored_frameworks = "IvengoSDK.framework"
  s.resource  = "IvengoSDK.framework/Versions/A/Resources/*.*"

  s.frameworks = "AdSupport", "CoreMedia", "CoreTelephony", "CoreLocation", "SystemConfiguration", "CoreGraphics", "UIKit", "Foundation", "AVFoundation"
  s.library = "xml2"

end