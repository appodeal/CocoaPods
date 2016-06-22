Pod::Spec.new do |s|

  s.name         = "AmazonAds"
  s.version      = "2.2.14"
  s.summary      = "Amazon Ads SDK for iOS"

  s.description  = <<-DESC
                   Amazon Ads SDK for iOS.
                   DESC

  s.homepage     = "https://github.com/Applifier/unity-ads-sdk"

  s.license      = { :type => 'Commercial', :text => <<-LICENSE
This software is licensed as "Program Materials" under the Program Materials License Agreement (the "License") of the Amazon Mobile App Distribution program, which is available at https://developer.amazon.com/sdk/pml.html. See the License for the specific language governing permissions and limitations under the License.
Use of the Amazon Mobile Ads is also subject to the Mobile Ad Network Publisher Agreement, available at https://developer.amazon.com/appsandservices/support/mobileads/publisher-agreement.html. See the Mobile Ad Network Publisher Agreement for the specific language governing permissions and limitations under the Mobile Ad Network Publisher Agreement.
These materials may include third party software that is copyrighted by other parties and is subject to separate license terms. Information on that software and the applicable copyright notices and license terms are included in the separate NOTICE.txt accompanying the applicable materials. You acknowledge and agree that your license to use and distribute these materials is conditioned on your providing to your users the notices and disclaimers that are specified by such license terms.
These materials are distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
                 LICENSE
                }


  s.author             = { "Amazon.com, Inc." => "https://developer.amazon.com/public/support/contact/contact-us" }

  s.platform     = :ios
  # s.platform     = :ios, "5.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"

  s.source       = { :http => "http://s3.amazonaws.com/appodeal-externalsdk/amazonads/2.2.14/Amazon-iOS-SDKs-2.2.14.zip" }
  s.vendored_frameworks = 'Amazon-iOS-SDKs/AmazonMobileAds/AmazonAd.framework'

  s.frameworks = "AdSupport", "CoreLocation", "SystemConfiguration", "CoreTelephony", "CoreGraphics", "MediaPlayer", "EventKit", "EventKitUI"

end
