Pod::Spec.new do |s|

  s.name         = "NexageSourceKitMRAID"
  s.version      = "1.0.6"
  s.summary      = "Nexage Integration SourceKit for MRAID"

  s.description  = <<-DESC
Nexage Integration SourceKit for MRAID is an easy to use library which implements the IAB MRAID 2.0 spec (http://www.iab.net/guidelines/508676/mobile_guidance/mraid). It is written in Objective-C and works in both iPhone and iPad applications.
DESC

  s.license      = { :type => 'BSD 3.0', :text => <<-LICENSE
    Copyright (c) 2013, Nexage, Inc.
    All rights reserved.
    Provided under BSD-3 license as follows:
    Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
    Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
    Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
    Neither the name of Nexage nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.
    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
    LICENSE
  }

  s.homepage     = "https://github.com/nexage/sourcekit-mraid-ios.git"
  s.author       = { "Nexage, Inc." => "http://www.nexage.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/nexage/sourcekit-mraid-ios.git", :tag => "v#{s.version}", :submodules => true}
  s.exclude_files = 'demo/**/*.{h,m}', 'src/MRAID Tests/**/*.{h,m}'

  s.source_files = 'src/**/*.{h,m}'

  s.dependency 'NexageSourceKitCommon', '~> 1.0.3'

end
