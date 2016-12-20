Pod::Spec.new do |s|

  s.name         = "VPAID-iOS"
  s.version      = "1.0.0"
  s.summary      = "Appodeal VPAID"

  s.description  = <<-DESC
It is written in Objective-C and works in both iPhone and iPad applications.
DESC

  s.license      = { :type => 'BSD 3.0', :text => <<-LICENSE
    Copyright (c) 2013, Appodeal, Inc.
    All rights reserved.
    Provided under BSD-3 license as follows:
    Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
    Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
    Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
    Neither the name of Appodeal nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.
    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
    LICENSE
  }

  s.homepage     = "git@github.com:appodeal/VPAID-iOS.git"
  s.author       = { "Appodeal, Inc." => "https://www.appodeal.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/appodeal/VPAID-iOS.git", :tag => "v#{s.version}", :submodules => true}
  s.exclude_files = 'VPAIDSample/**/*.{h,m}'

  s.source_files = 'VPAID/*.{h,m}'

end
