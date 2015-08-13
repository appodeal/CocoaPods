Pod::Spec.new do |s|

  s.name         = "FBAudienceNetwork"
  s.version      = "4.5"
  s.summary      = "Facebook Audience Network"

  s.description  = <<-DESC
Facebook's Audience Network allows you to monetize your iOS and Android apps with Facebook ads. After integrating our SDK, advertisers can use the over 50 targeting options on Facebook to find their audience inside your app.
                   DESC

  s.homepage     = "https://developers.facebook.com/docs/audience-network"

  s.license      = { :type => 'Facebook License', :text => <<-LICENSE
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

  s.author             = { "Facebook" => "facebook.com" }

  # s.platform     = :ios
  s.platform     = :ios, "7.0"

  s.source       = { :http => "https://developers.facebook.com/resources/facebook-ios-sdk-current.zip" }
  s.ios.vendored_frameworks = 'FBAudienceNetwork.framework'

  s.frameworks = "AdSupport", "StoreKit", "CoreMotion"

end
