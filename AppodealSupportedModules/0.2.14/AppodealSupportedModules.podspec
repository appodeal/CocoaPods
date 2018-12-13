Pod::Spec.new do |s|
  s.name         = "AppodealSupportedModules"
  s.version      = "0.2.14"
  s.summary      = "Supported modules for Appodeal iOS SDK"

  s.description  = <<-DESC
                   Supported modules for Appodeal iOS SDK
                   DESC

  s.homepage     = "http://www.appodeal.com"


  s.license      = { :type => 'BSD 3.0', :text => <<-LICENSE
    Copyright (c) 2018, Appodeal, Inc.
    All rights reserved.
    Provided under BSD-3 license as follows:
    Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
    Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
    Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
    Neither the name of Nexage nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.
    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
    LICENSE
  }

  s.author       = { "Appodeal" => "http://www.appodeal.com" }

  s.platform     = :ios, '8.0'
  s.source       = { :git => "git@github.com:appodeal/Supported-Modules-iOS.git", :tag => "v#{s.version}" }

  s.default_subspec = "Full"

  s.subspec 'Full' do |ss| 
    ss.dependency "AppodealSupportedModules/ASKCrypto"
    ss.dependency "AppodealSupportedModules/ASKGZipper"
    ss.dependency "AppodealSupportedModules/ASKJSON" 
    ss.dependency "AppodealSupportedModules/ASKProductPresentation"
    ss.dependency "AppodealSupportedModules/ASKLogger"
    ss.dependency "AppodealSupportedModules/ASKSpinner"
    ss.dependency "AppodealSupportedModules/ASKExtension"
    ss.dependency "AppodealSupportedModules/AWEPromise"
    ss.dependency "AppodealSupportedModules/ASKViewability"
    ss.dependency "AppodealSupportedModules/ASKCryptoGenerator"
    ss.dependency "AppodealSupportedModules/ASKDiskUtils"
  end


  s.subspec 'ASKCrypto' do |ss|
    ss.vendored_frameworks = "Release/ASKCrypto.framework"
  end

  s.subspec 'ASKCryptoGenerator' do |ss|
    ss.vendored_frameworks = "Release/ASKCryptoGenerator.framework"
  end 

  s.subspec 'ASKGZipper' do |ss|
    ss.vendored_frameworks = "Release/ASKGZipper.framework"
  end

  s.subspec 'ASKJSON' do |ss|
    ss.vendored_frameworks = "Release/ASKJSON.framework"
  end

  s.subspec 'ASKProductPresentation' do |ss|
    ss.vendored_frameworks = "Release/ASKProductPresentation.framework"
  end

  s.subspec 'ASKLogger' do |ss|
    ss.vendored_frameworks = "Release/ASKLogger.framework"
  end

  s.subspec 'ASKSpinner' do |ss|
    ss.vendored_frameworks = "Release/ASKSpinner.framework"
  end

  s.subspec 'ASKExtension' do |ss|
    ss.vendored_frameworks = "Release/ASKExtension.framework"
  end

  s.subspec 'AWEPromise' do |ss|
    ss.vendored_frameworks = "Release/AWEPromise.framework"
  end

  s.subspec 'ASKViewability' do |ss|
    ss.vendored_frameworks = "Release/ASKViewabilityTracker.framework"
  end

  s.subspec 'ASKDiskUtils' do |ss|
    ss.vendored_frameworks = "Release/ASKDiskUtils.framework"
  end

end
