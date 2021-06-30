//
//
//  Copyright YoYo Games Ltd.
//  For support please submit a ticket at help.yoyogames.com
//
//

#import "iOS_InAppPurchaseAppDelegate.h"
#import <StoreKit/StoreKit.h>
#import "iOS_TransactionListener.h"

@implementation iOS_InAppPurchaseAppDelegate

- (BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Check if any superclasses implement this method and call it
    if([${YYExtAppDelegateBaseClass} instancesRespondToSelector:@selector(application:willFinishLaunchingWithOptions:)])
    {
        [super application:application willFinishLaunchingWithOptions:launchOptions];
    }
    
    [[SKPaymentQueue defaultQueue] addTransactionObserver:[iOS_TransactionListener sharedInstance]];

    return TRUE;
}

- (void)applicationWillTerminate:(UIApplication *)application 
{
    // Remove the observer.
    [[SKPaymentQueue defaultQueue] removeTransactionObserver: [iOS_TransactionListener sharedInstance]];
}

@end
