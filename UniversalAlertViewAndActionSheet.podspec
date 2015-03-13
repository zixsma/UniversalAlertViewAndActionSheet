#
# Be sure to run `pod lib lint UniversalAlertViewAndActionSheet.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "UniversalAlertViewAndActionSheet"
  s.version          = "0.1.0"
  s.summary          = "UniversalAlertViewAndActionSheet is design to support both AlertView and ActionSheet after Apple deprecated api in iOS7 and early with default UIKit component. "
  s.description      = <<-DESC
# Universal AlertView and ActionSheet
## What is it?
This is a library for presenting UIKit AlertView and ActionSheet on iOS5+ with a single api.

## Why should I use?
Because of iOS7- and iOS8+ are using a difference api for AlertView and ActionSheet. If you want to use a native UIKit AlertView and ActionSheet, you should use this.
                       DESC
  s.homepage         = "https://github.com/zixsma/UniversalAlertViewAndActionSheet"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Tanakrit Saisillapee" => "zixsma@hotmail.com" }
  s.source           = { :git => "https://github.com/zixsma/UniversalAlertViewAndActionSheet.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/izixsma'

  s.platform     = :ios, '5.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  # s.resource_bundles = {
  #  'UniversalAlertViewAndActionSheet' => ['Pod/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  s.dependency 'BlocksKit', '~> 2.2'
end
