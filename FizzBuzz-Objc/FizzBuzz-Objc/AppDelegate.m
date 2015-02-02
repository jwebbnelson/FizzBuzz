//
//  AppDelegate.m
//  FizzBuzz-Objc
//
//  Created by Joshua Howland on 8/22/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    for (int i = 1; i <= 100; i++) {
        if ([self isBuzzed:i] == true && [self isFizzed:i] == false) {
            NSLog(@"Buzz");
        }
        
        if([self isBuzzed:i] == false && [self isFizzed:i] == true) {
            NSLog(@"Fizz");
        }
        
        if([self isBuzzed:i] == true && [self isFizzed:i] == true) {
            NSLog(@"FizzBuzz");
        }

        if([self isBuzzed:i] == false && [self isFizzed:i] == false) {
            NSLog(@"%d", i);
        }
    }
    return YES;
}

-(BOOL)isBuzzed:(int)number{
    NSString *numToString = [@(number) stringValue];
    if ((number % 3) == 0) {
        return true;
    }else if ([numToString rangeOfString:@"3"].location != NSNotFound){
        return true;
    }else{
        return false;
    }
}

-(BOOL)isFizzed:(int)number{
    NSString *numToString = [@(number) stringValue];
    if ((number % 5) == 0) {
        //NSLog(@"divisible by 5");
        return true;
    }else if ([numToString rangeOfString:@"5"].location != NSNotFound){
        //NSLog(@"contains 5");
        return true;
    }else{
        // NSLog(@"Is not Fizzed");
        return false;
    }
}

@end
