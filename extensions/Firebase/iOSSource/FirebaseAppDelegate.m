#import "FirebaseAppDelegate.h"
#import "Firebase.h"

@implementation FirebaseAppDelegate

    - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
        [FIRApp configure];
        
        // Check if any superclasses implement this method and call it
        if([[self superclass] instancesRespondToSelector:@selector(application:didFinishLaunchingWithOptions:)])
            return [super application:application didFinishLaunchingWithOptions:launchOptions];
        else
            return TRUE;
    }

@end
