/*
    ---> Toast - Mobile Extension
 
    ---> Author: Irlan Bragi
    ---> Organization: Bragi Estúdios
    ---> Creation date: July 2020
    ---> Contact: team@bragiestudios.com
 
    ---> Copyright © 2020 Bragi Estúdios. All rights reserved. https://bragiestudios.com
*/

#import <Foundation/Foundation.h>
#import "ToastMobile.h"

@implementation ToastMobile
{
}



//-------> show_toast_mobile
    
-(void)show_toast_mobile:(NSString*)_str_Toast_
    {
                
            [[NSOperationQueue mainQueue] addOperationWithBlock:^ {
                UIWindow * keyWindow = [[UIApplication sharedApplication] keyWindow];
                UILabel *toastView = [[UILabel alloc] init];
                toastView.lineBreakMode = NSLineBreakByWordWrapping; //ADD NOW
                toastView.numberOfLines = 0;
                toastView.text = _str_Toast_;
                [toastView sizeToFit];
                [toastView setNeedsDisplay];
                //toastView.font = [MYUIStyles getToastHeaderFont];
                toastView.textColor = [UIColor colorWithRed:5/255.f green:5/255.f blue:5/255.f alpha:1.0];
                toastView.backgroundColor = [UIColor colorWithRed:250/255.f green:250/255.f blue:250/255.f alpha:1.0];
                toastView.textAlignment = NSTextAlignmentCenter;
                toastView.frame = CGRectMake(0.0, 0.0, toastView.frame.size.width+40, toastView.frame.size.height+40);
                
                toastView.layer.cornerRadius = 20;
                toastView.layer.masksToBounds = YES;
                toastView.center = CGPointMake(keyWindow.frame.size.width/2.0,keyWindow.frame.size.height-(toastView.frame.size.height/2.0)-20);
                toastView.alpha = 5.0;

                [keyWindow addSubview:toastView];

                
                [UIView animateWithDuration: 4.0f
                                  delay: 0.0
                                options: UIViewAnimationOptionCurveEaseOut
                             animations: ^{
                                 toastView.alpha = 0.0;
                             }
                             completion: ^(BOOL finished) {
                                 [toastView removeFromSuperview];
                             }
                 ];
            }];
        
    }
    
//<------- show_toast_mobile



@end





