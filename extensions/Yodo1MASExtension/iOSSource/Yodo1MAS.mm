/*
    ---> Notch - Mobile Extension
 
    ---> Author: Irlan Bragi
    ---> Organization: Bragi Estúdios
    ---> Creation date: March 2019
    ---> Contact: team@bragiestudios.com
 
    ---> Copyright © 2019 Bragi Estúdios. All rights reserved. https://bragiestudios.com
*/

#import <Foundation/Foundation.h>
#import <sys/utsname.h>
#import "Yodo1MAS.h"

@implementation Yodo1MAS
{
}


//-------> Yodo1MAS_BannerINIT
    
    -(double)Yodo1MAS_BannerINIT
    {
        //Set Banner Ads Callback:
            [Yodo1Ads setBannerCallback:^(Yodo1AdsEvent adEvent, NSError *error) {
                NSString* event = @"";
                switch (adEvent) {
                    case Yodo1AdsEventClose:
                        event = @"Banner Ad has been clicked";
                        break;
                    case Yodo1AdsEventShowSuccess:
                        event = @"Banner Ad has been shown successfully";
                        break;
                    case Yodo1AdsEventShowFail:
                        event = @"Banner Ad show failed";
                            if (error) {
                                event = [NSString stringWithFormat:@"%@,error:%@",event,[error localizedDescription]];
                            }
                        break;
                    case Yodo1AdsEventClick:
                        event = @"Banner Ad has been clicked";
                        break;
                    default:
                        break;
                }
                NSLog(@"Banner:%@",event);
            }];
            
        //Set Banner Ads Alignment
            [Yodo1Ads setBannerAlign:Yodo1AdsBannerAdAlignBotton
            |Yodo1AdsBannerAdAlignHorizontalCenter];
            
        //FIM:
        return TRUE;
    }
    
//<------- Yodo1MAS_BannerINIT


//-------> yodo1ShowBannerAd
    
    -(double)yodo1ShowBannerAd
    {
        //Show Banner Ads:
            [Yodo1Ads showBanner];
            
        //FIM:
        return TRUE;
    }
    
//<------- yodo1ShowBannerAd

//-------> yodo1HideBannerAd
    
    -(double)yodo1HideBannerAd
    {
        //Hide Banner Ads:
            [Yodo1Ads hideBanner];
            
        //FIM:
        return TRUE;
    }
    
//<------- yodo1HideBannerAd

//-------> yodo1BannerIsReady
    
    -(NSString)yodo1BannerIsReady
    {
        //Check Banner Loading Status
            BOOL isReady = [Yodo1Ads bannerIsReady];
        
        if (isReady)
        {
            return "BANNER_READY";
        }
        else
        {
            return "BANNER_NOTREADY";
        }
        
    }
    
//<------- yodo1BannerIsReady

@end





