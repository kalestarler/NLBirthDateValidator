#
# Be sure to run `pod lib lint NLBirthDateValidator.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'NLBirthDateValidator'
  s.version          = '0.1.0'
  s.summary          = 'A simple function to check if a birth date is valid, and/or if it meets a minimum age requirement.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A simple function to check if a birth date is valid, and/or if it meets a minimum age requirement. Just pass in the parameters for day, month, year and the minimum age you want to check against (optional), and it will return a 'true' Boolean if it is valid, or 'false' if it is not.
                       DESC

  s.homepage         = 'https://github.com/kalestarler/NLBirthDateValidator'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Kale' => 'kale@niveumlabs.com' }
  s.source           = { :git => 'https://github.com/kalestarler/NLBirthDateValidator.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'NLBirthDateValidator/Classes/**/*'
  
  # s.resource_bundles = {
  #   'NLBirthDateValidator' => ['NLBirthDateValidator/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
