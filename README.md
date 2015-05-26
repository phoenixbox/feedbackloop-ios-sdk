![FeedbackLoop](/../screenshots/images/github_title.png?raw=true "FeedbackLoop")
## Requirements
The FeedbackLoop iOS SDK supports iOS iOS 7.x.

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
* Initialize the lib in your AppDelegate.m using your FeedbackLoop AppId

```
	- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
			// Initialize FeedbackLoop
    	[FeedbackLoop initWithAppId:@"<#your-app-id#>"];
	}
```

* Build a dictionary with relevant user data
* Register this user with the FeedbackLoop lib
* Present the chat channel

```
NSDictionary *user = @{
  @"email": @"<%= current_user.email %>",
  @"user_name": @"<%= current_user.name %>",
  @"user_link": @"http://www.yourwebsitehere.com/users/user_id",
  @"created_at": @"<%= current_user.created_at.to_i %>",
  @"links": @{ // Any metadata you want to include about the user
		@"model": [UIDevice currentDevice].model
  }
};

// Pass the user to the register method
[FeedbackLoop registerAuthenticatedUser:user];

// Present the chat channel
[FeedbackLoop presentChatChannel];
```

Easy-peasy.