![FeedbackLoop](/../screenshots/images/github_title.png?raw=true "FeedbackLoop")
## Requirements
The FeedbackLoop iOS SDK supports iOS 7.x and iOS 8.x.

## Installation

### CocoaPods
Add the FeedbackLoop pod into your Podfile and run a `pod install` or `pod update`.

	pod 'FeedbackLoop'

### Manual Installation

1. Add the `FeedbackLoop.framework` to your Xcode project (you can get it from [GitHub](https://github.com/phoenixbox/feedbackloop-ios-sdk)). In your build target, **make sure** to include the `-ObjC` flag under `Other Linker Flags`.

2. Sometimes Xcode won't correctly add the `FeedbackLoop.bundle` so make sure to add it to your target's Copy Bundle Resources build phase. Reveal the `FeedbackLoop.framework` in Finder and you'll find the bundle in the `FeedbackLoop.framework/Versions/A/Resources` folder.

3. Import FeedbackLoop using the following `#import <FeedbackLoop/FeedbackLoop.h>` statement.

If you get errors, check out our FeedbackLoop [Troubleshooting section here](http://getfeedbackloop.com/documentation/ios).

##How should I use the FeedbackLoop SDK in my app?

Each customer will get their own Slack channel based on their personal infor. Simply present the FeedbackLoop channel UI, and the user will be automatically added to their own channel in Slack.

`[FeedbackLoop presentChatChannel]`


### Initialize FeedbackLoop
Initialize FeedbackLoop by calling the following in your application delegate:

	- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
			// Initialize FeedbackLoop
    	[FeedbackLoop setSlackApiKey:@"<#ios_sdk-...#>" forAppId:@"<#your-app-id#>"];
	}

### Present the FeedbackLoop chat interface?

FeedbackLoop lets your users send messages directly to you support staff in Slack.

When you want the user to see their chat window, simply call:

`[FeedbackLoop presentChatChannel]`

If you want the user to see their conversation list, call:

`[FeedbackLoop presentConversationList]`

Easy-peasy.