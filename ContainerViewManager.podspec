#
# Be sure to run `pod lib lint ContainerViewManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "ContainerViewManager"
  s.version          = "1.0.5"
  s.summary          = "Helper classes to ContainerView usage with IE."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
ContainerViewManager helps you with linking more than one ViewController to the same ContainerView with segues in the Interface Builder.
                       DESC

  s.homepage         = "https://github.com/brurend/ContainerViewManager"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "brurend" => "brurend@hotmail.com" }
  s.source           = { :git => "https://github.com/brurend/ContainerViewManager.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '8.3'
  s.requires_arc = true

  s.source_files = 'ContainerViewManager/Classes/*'
  s.resource_bundles = {
    'ContainerViewManager' => ['ContainerViewManager/Assets/*.png']
  }

   s.public_header_files = 'ContainerViewManager/Classes/ContainerViewManager.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
