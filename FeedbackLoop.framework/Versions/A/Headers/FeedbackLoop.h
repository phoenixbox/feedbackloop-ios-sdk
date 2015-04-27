//
//  FeedbackLoop.h
//  FeedbackLoop
//
//  Created by Shane Rogers on 4/26/15.
//  Copyright (c) 2015 FBL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#if __IPHONE_OS_VERSION_MIN_REQUIRED < __IPHONE_7_0
#error The FeedbackLoop iOS SDK supports iOS 7.0 upwards.
#endif


@interface FeedbackLoop : NSObject

+ (void)setSlackApiKey:(NSString *)apiKey forAppId:(NSString *)appId;

+ (void)presentChatChannel;

+ (void)presentConversationList;

@end
