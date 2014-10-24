//
//  NSObject+EDOpenURL.m
//  EDOpenURL
//
//  Created by Martin Kim Dung-Pham on 24/10/14.
//  Copyright (c) 2014 Martin Kim Dung-Pham. All rights reserved.
//

#import "NSObject+EDOpenURL.h"

#import <UIKit/UIKit.h>

@implementation NSObject (EDOpenURL)

static NSString * const EDAppReferralErrorDomain = @"EDOpenURLError";

- (void)ed_openURL:(NSURL *)url completionHandler:(void(^)(NSError *error))completion
{
    NSError *error;
    
    if([[UIApplication sharedApplication] canOpenURL:url])
    {
        [[UIApplication sharedApplication] openURL:url];
    }
    else
    {
        error = [NSError errorWithDomain:EDAppReferralErrorDomain
                                    code:EDOpenURLErrorCodeFailure
                                userInfo:@{@"url":url}];
    }
    
    completion(error);
}

@end
