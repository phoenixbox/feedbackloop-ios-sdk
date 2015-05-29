Pod::Spec.new do |s|
  s.name         = "FeedbackLoop"
  s.version      = "0.1.66"
  s.summary      = "Customer support through Slack"
  s.description  = <<-DESC
                  Customer support through Slack. Support your customers with the tool your team knows and loves. Slack
                   DESC
  s.homepage     = "https://github.com/phoenixbox/feedbackloop-ios-sdk"
  s.license             = { :type => "Apache license", :file => "LICENSE" }
  s.author             = "Shane Rogers"
  s.platform   = :ios, '7.0'
  s.source              = { :git => 'https://github.com/phoenixbox/feedbackloop-ios-sdk.git', :tag => s.version.to_s }
  s.preserve_paths      = 'FeedbackLoopSDK.framework'
  s.public_header_files = 'FeedbackLoopSDK.framework/Versions/A/Headers/FeedbackLoop.h'
  s.dependency 'AFNetworking'
  s.dependency 'JSONModel'
  s.dependency 'JSQMessagesViewController'
  s.dependency 'SocketRocket'
  s.dependency 'MBProgressHUD'
  s.dependency 'URBMediaFocusViewController'
  s.vendored_frameworks = 'FeedbackLoopSDK.framework'
  s.requires_arc = true
  s.frameworks = ["Foundation", "UIKit", "Security", "SystemConfiguration", "MobileCoreServices", "ImageIO", "AVFoundation", "QuartzCore", "CoreGraphics"]
  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited)' }
  s.resource = 'FeedbackLoopSDK.bundle'
end
