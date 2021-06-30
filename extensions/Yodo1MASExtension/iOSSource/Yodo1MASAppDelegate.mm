/*
    ---> Notch - Mobile Extension
 
    ---> Author: Irlan Bragi
    ---> Organization: Bragi Estúdios
    ---> Creation date: March 2019
    ---> Contact: team@bragiestudios.com
 
    ---> Copyright © 2019 Bragi Estúdios. All rights reserved. https://bragiestudios.com
*/

#import "Yodo1MASAppDelegate.h"
#import <StoreKit/StoreKit.h>
#import "Yodo1Ads.h"

@implementation Yodo1MASAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [Yodo1Ads initWithAppKey:@"49EpsaBAMCo"];
    //...
    return YES;
    
} 


@end





