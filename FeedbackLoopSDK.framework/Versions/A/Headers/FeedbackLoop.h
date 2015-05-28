//
//  FeedbackLoop.h
//  FeedbackLoop
//
//  Created by Shane Rogers on 4/27/15.
//  Copyright (c) 2015 REPL. All rights reserved.

#import <Foundation/Foundation.h>

@interface FeedbackLoop : NSObject

+ (void)registerAuthenticatedUser:(NSDictionary *)user;

+ (void)registerUnauthenticatedUser:(NSDictionary *)user;

+ (void)initWithAppId:(NSString *)appId;

+ (void)presentChatChannel;

@end
