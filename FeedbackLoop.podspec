Pod::Spec.new do |s|
  s.name         = "FeedbackLoop"
  s.version      = "0.0.11"
  s.summary      = "Customer support through Slack"
  s.description  = <<-DESC
                  Support your customers with the tool your team knows and loves. Slack
                   DESC
  s.homepage     = "https://github.com/phoenixbox/feedbackloop-ios-sdk"
  s.license             = { :type => "Apache license", :file => "LICENSE" }
  s.author             = "Shane Rogers"
  s.platform   = :ios, '7.0'
  s.source              = { :git => 'https://github.com/phoenixbox/feedbackloop-ios-sdk.git', :tag => s.version.to_s }
  s.preserve_paths      = 'FeedbackLoop.framework'
  s.public_header_files = 'FeedbackLoop.framework/Versions/A/Headers/FeedbackLoop.h'
  s.dependency 'AFNetworking'
  s.dependency 'AFBlurSegue'
  s.dependency 'ObjectiveSugar'
  s.dependency 'SDWebImage'
  s.dependency 'JSONModel'
  s.dependency 'JSQMessagesViewController'
  s.vendored_frameworks = 'FeedbackLoop.framework'
  s.requires_arc = true
  s.frameworks = ["Foundation", "UIKit"]
  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited)' }
  s.resource = 'FeedbackLoop.bundle'
end