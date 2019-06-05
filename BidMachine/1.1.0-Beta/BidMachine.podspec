Pod::Spec.new do |s|
  s.name         = "BidMachine"
  s.version      = "1.1.0-Beta"
  s.summary      = "BidMachine iOS SDK"

  s.description  = <<-DESC
                   iOS client side of bid machine
                   DESC

  s.homepage     = "https://bidmachine.io"


  s.license      = { :type => 'BSD 3.0', :text => <<-LICENSE
    Copyright (c) 2017, Appodeal, Inc.
All rights reserved.
Provided under BSD-3 license as follows:
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
3. Neither the name of Appodeal nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
    LICENSE
  }

  s.author       = { "Appodeal" => "http://www.appodeal.com" }

  s.platform     = :ios, '9.0'
  s.source       = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/BidMachine/#{s.version}/BidMachine-SDK-iOS-#{s.version}.zip" }

  s.vendored_frameworks = "BidMachine.framework"
  s.frameworks = "AdSupport", "SystemConfiguration", "CoreTelephony", "SafariServices", "StoreKit"
  s.libraries = "xml2", "z"
end