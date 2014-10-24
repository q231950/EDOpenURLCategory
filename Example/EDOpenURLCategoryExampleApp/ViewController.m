//
//  ViewController.m
//  EDOpenURLCategoryExampleApp
//
//  Created by Martin Kim Dung-Pham on 24/10/14.
//  Copyright (c) 2014 Martin Kim Dung-Pham. All rights reserved.
//

#import "ViewController.h"

#import <EDOpenURLCategory/NSObject+EDOpenURL.h>

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    NSURL *url = [NSURL URLWithString:@"maps://"];
    
    [self ed_openURL:url completionHandler:^(NSError *error) {
        NSLog(@"URL was %@.", error? @"not opened" : @"opened");
    }];
}

@end
