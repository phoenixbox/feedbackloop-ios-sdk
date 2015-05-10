![FeedbackLoop](/../screenshots/images/github_title.png?raw=true "FeedbackLoop")
## Requirements
The FeedbackLoop iOS SDK supports iOS iOS 8.x.

## Installation

### CocoaPods
Add the FeedbackLoop pod into your Podfile and run a `pod install` or `pod update`.

	pod 'FeedbackLoop'

### Manual Installation

1. Add the `FeedbackLoop.framework` to your Xcode project (you can get it from [GitHub](https://github.com/phoenixbox/feedbackloop-ios-sdk)). In your build target, **make sure** to include the `-ObjC` flag under `Other Linker Flags`.

2. Sometimes Xcode won't correctly add the `FeedbackLoop.bundle` so make sure to add it to your target's Copy Bundle Resources build phase. Reveal the `FeedbackLoop.framework` in Finder and you'll find the bundle in the `FeedbackLoop.framework/Versions/A/Resources` folder.

3. Import FeedbackLoop using the following `#import <FeedbackLoop/FeedbackLoop.h>` statement.

##How should I use the FeedbackLoop SDK in my app?

* Import `<FeedbackLoop/FeedbackLoop.h>` where necessary
* Initialize FeedbackLoop in your `AppDelegate`

```
	- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
			// Initialize FeedbackLoop
    	[FeedbackLoop initWithAppId:@"<#your-app-id#>"];
	}
```

#### Authenticated Users
* Register your current user's email
	* `[FeedbackLoop registerUserWithEmail:@"<#current-user-email#>"]`

#### Un-Authenticated Users
We provide an email input UI for them to provide their email

#### Presenting the chat UI
* Trigger the chat view presentation where ever you like
	*  `[FeedbackLoop presentChatChannel]`


##How it works
When you register your current user's email, or they provide a valid email address through the UI, that email will be used to create a channel for them in your Slack.

Emails are unique, so each customer gets their own Slack channel which you can use to respond to them in real-time.

Simply present the FeedbackLoop channel UI, and get chatting.

Easy-peasy.