//
//  NSObject+EDOpenURL.h
//  EDOpenURL
//
//  Created by Martin Kim Dung-Pham on 24/10/14.
//  Copyright (c) 2014 Martin Kim Dung-Pham. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum EDOpenURLErrorCodes {
    EDOpenURLErrorCodeFailure
} EDOpenURLErrorCode;

@interface NSObject (EDOpenURL)

/**
 * @details Opens the app registered with the given url's scheme. If no suitable app was found an error is returned in the completion handler.
 * @param url The url to open.
 * @param completionHandler The completion block with a possible error out of EDAppReferralError domain.
 */
- (void)ed_openURL:(NSURL *)url completionHandler:(void(^)(NSError *error))completion;

@end
