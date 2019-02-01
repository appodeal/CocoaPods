Pod::Spec.new do |s|
  s.name         = 'MobileAdDisplayManagers' 
  s.version      = '0.2.3' 
  s.summary      = 'Mobile Ad Display Managers modules for Appodeal iOS SDK' 

  s.description  = <<-DESC
                   Includes display managers for MRAID 2.0 (pending), VAST 3.0 and NAST 1.0
                   DESC

  s.homepage     = 'http://www.appodeal.com' 


  s.license      = { :type => 'BSD 3.0', :text => <<-LICENSE
    Copyright (c) 2018, Appodeal, Inc.
    All rights reserved.
    Provided under BSD-3 license as follows:
    Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
    Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
    Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
    Neither the name of Nexage nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.
    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS ' AS IS'  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
    LICENSE
  }

  s.author       = { 'Appodeal'  => 'http://www.appodeal.com'  }

  s.platform     = :ios, '9.0'
  s.source       = { :http => "https://s3-us-west-1.amazonaws.com/appodeal-ios/MobileAdDisplayManagers/v#{s.version}/MobileAdDisplayManagers.zip"  }

  s.dependency 'AppodealSupportedModules/ASKExtension', '~> 0.4'

  s.subspec 'AppodealDocumentParser' do |ss|
    ss.vendored_frameworks = 'AppodealDocumentParser.framework' 
    ss.library = 'xml2'
  end

  s.subspec 'AppodealVideoPlayer' do |ss|
    ss.vendored_frameworks = 'AppodealVideoPlayer.framework' 
    ss.dependency 'AppodealSupportedModules/ASKViewability', '~> 0.4'
    ss.dependency 'AppodealSupportedModules/ASKGraphicButton', '~> 0.4'
    ss.dependency 'AppodealSupportedModules/ASKDiskUtils', '~> 0.4'
    ss.dependency 'AppodealSupportedModules/ASKExtension', '~> 0.4'
    ss.dependency 'AppodealSupportedModules/UIExtension', '~> 0.4'
  end

  s.subspec 'AppodealRichMedia' do |ss|
    ss.vendored_frameworks = 'AppodealRichMedia.framework' 
    ss.dependency 'MobileAdDisplayManagers/AppodealVASTAssets'
    ss.dependency 'MobileAdDisplayManagers/AppodealVideoPlayer'
    ss.dependency 'AppodealSupportedModules/ASKSpinner', '~> 0.4'
    ss.dependency 'AppodealSupportedModules/ASKProductPresentation', '~> 0.4'
  end
  
  s.subspec 'AppodealVASTAssets' do |ss|
    ss.vendored_frameworks = 'AppodealVASTAssets.framework' 
    ss.dependency 'MobileAdDisplayManagers/AppodealDocumentParser'
    ss.dependency 'AppodealSupportedModules/UIExtension', '~> 0.4'
    ss.dependency 'AppodealSupportedModules/OverlayPosition', '~> 0.4'
  end

  s.subspec 'AppodealVASTKit' do |ss|
    ss.vendored_frameworks = 'AppodealVASTKit.framework' 
    ss.dependency 'MobileAdDisplayManagers/AppodealVASTAssets'
    ss.dependency 'MobileAdDisplayManagers/AppodealVideoPlayer'
    ss.dependency 'NexageSourceKitMRAID', '~> 1.3'
    ss.dependency 'AppodealSupportedModules/ASKLogger', '~> 0.4'
  end

  s.subspec 'AppodealNASTKit' do |ss|
    ss.vendored_frameworks = 'AppodealNASTKit.framework' 
    ss.dependency 'MobileAdDisplayManagers/AppodealVASTKit'
  end 
end
