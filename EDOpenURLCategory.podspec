#
# Be sure to run `pod lib lint EDOpenURLCategory.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "EDOpenURLCategory"
  s.version          = "0.1.0"
  s.summary          = "Category on NSObject to open apps by url"
  s.description      = <<-DESC
                       This Objective-C category on NSObject mimics the openURL:completionHandler: method of NSExtensionContext.

                       DESC
  s.homepage         = "https://github.com/q231950/EDOpenURLCategory"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Martin Kim Dung-Pham" => "kim@elbedev.com" }
  s.source           = { :git => "https://github.com/q231950/EDOpenURLCategory.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/q231950'

  s.platform     = :ios, '5.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'EDOpenURLCategory' => ['Pod/Assets/*.png']
  }

  s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
