
Pod::Spec.new do |s|
  s.name         = "LiveRailSDK"
  s.version      = "4.9.1"
  s.summary      = "Facebook Audience Network Mobile App Ad SDK"

  s.description  = <<-DESC
                     Facebook's Audience Network allows you to monetize your iOS and Android apps with Facebook ads.
                   DESC
  s.homepage     = "https://developers.facebook.com/docs/audience-network"
  s.license      = {
    :type => 'Copyright',
    :text => <<-LICENSE
              Copyright (c) 2014-present, Facebook, Inc. All rights reserved.

              You are hereby granted a non-exclusive, worldwide, royalty-free license to use,
              copy, modify, and distribute this software in source code or binary form for use
              in connection with the web services and APIs provided by Facebook.

              As with any software that integrates with the Facebook platform, your use of
              this software is subject to the Facebook Developer Principles and Policies
              [http://developers.facebook.com/policy/]. This copyright notice shall be
              included in all copies or substantial portions of the software.

              THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
              IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
              FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
              COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
              IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
              CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
            LICENSE
  }
  s.author       = 'Facebook'
  s.platform     = :ios, "6.0"

  s.source       = { :http => "https://s3.amazonaws.com/appodeal-externalsdk/LiveRails/LiveRailSDK.framework-4.9.1.zip" }

  s.frameworks = "StoreKit", "CoreGraphics", "UIKit", "EventKit", "EventKitUI", "Foundation", "CoreMedia", "SystemConfiguration", "CoreTelephony", "AVFoundation", "MediaPlayer", "CoreLocation", "JavaScriptCore"
  s.weak_frameworks = "AdSupport", "CoreMotion"
  s.vendored_frameworks = 'LiveRailSDK.framework'

  s.libraries = "z", "c++"

  s.requires_arc = true
end
