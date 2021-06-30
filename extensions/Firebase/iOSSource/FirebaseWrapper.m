#import "FirebaseWrapper.h"
#import "Firebase.h"

@implementation FirebaseWrapper

    -(void)logEvent:(NSString *) eventName {
        [FIRAnalytics logEventWithName:eventName parameters:NULL];
    }
    
    -(void)logEventParamLong:(NSString *)eventName
                   paramName:(NSString *)paramName paramValue:(double)paramValue {
        [FIRAnalytics logEventWithName:eventName parameters:@{paramName:[NSNumber numberWithLong:paramValue]}];
    }

    -(void)logEventParamString:(NSString *)eventName param1Name:(NSString *)param1Name param1Value:(NSString *)param1Value {
        [FIRAnalytics logEventWithName:eventName parameters:@{
                                                              param1Name:param1Value
                                                              }];
    }

    -(void)logEventParamsStringInt:(NSString *)eventName
                        param1Name:(NSString *)param1Name param1Value:(NSString *)param1Value
                        param2Name:(NSString *)param2Name param2Value:(double)param2Value {
        [FIRAnalytics logEventWithName:eventName parameters:@{
                                                              param1Name:param1Value,
                                                              param2Name:[NSNumber numberWithInteger:param2Value]
                                                              }];
    }




-(void)logEventParams4Strings:(NSString *)eventName
                   param1Name:(NSString *)param1Name param1Value:(NSString *)param1Value
                   param2Name:(NSString *)param2Name param2Value:(NSString *)param2Value
                   param3Name:(NSString *)param3Name param3Value:(NSString *)param3Value
                   param4Name:(NSString *)param4Name param4Value:(NSString *)param4Value{
                       [FIRAnalytics logEventWithName:eventName parameters:@{
                                                                             param1Name:param1Value,
                                                                             param2Name:param2Value,
                                                                             param3Name:param3Value,
                                                                             param4Name:param4Value
                                                                             }];
                   }



-(void)logEventParams2Strings:(NSString *)eventName
                   param1Name:(NSString *)param1Name param1Value:(NSString *)param1Value
                   param2Name:(NSString *)param2Name param2Value:(NSString *)param2Value{
                        [FIRAnalytics logEventWithName:eventName parameters:@{
                                                                              param1Name:param1Value,
                                                                              param2Name:param2Value
                                                                              }];
}






    -(void)logEventParamsIntIntIntDouble:(NSString *)eventName
                              param1Name:(NSString *)param1Name param1Value:(double)param1Value
                              param2Name:(NSString *)param2Name param2Value:(double)param2Value
                              param3Name:(NSString *)param3Name param3Value:(double)param3Value
                              param4Name:(NSString *)param4Name param4Value:(double)param4Value{
                               [FIRAnalytics logEventWithName:eventName parameters:@{
                                                                                     param1Name:[NSNumber numberWithInteger:param1Value],
                                                                                     param2Name:[NSNumber numberWithInteger:param2Value],
                                                                                     param3Name:[NSNumber numberWithInteger:param3Value],
                                                                                     param4Name:[NSNumber numberWithFloat:param4Value]
                                                                                     }];
                           }







    -(void)logEventParamsIntBoolean:(NSString *)eventName
                         param1Name:(NSString *)param1Name param1Value:(double)param1Value
                         param2Name:(NSString *)param2Name param2Value:(double)param2Value {
        [FIRAnalytics logEventWithName:eventName parameters:@{
                                                              param1Name:[NSNumber numberWithInteger:param1Value],
                                                              param2Name:[NSNumber numberWithBool:param2Value]
                                                              }];
    }

    -(void)logEventParamsStringIntIntFloatBoolean:(NSString *)eventName
                                       param1Name:(NSString *)param1Name param1Value:(NSString *)param1Value
                                       param2Name:(NSString *)param2Name param2Value:(double)param2Value
                                       param3Name:(NSString *)param3Name param3Value:(double)param3Value
                                       param4Name:(NSString *)param4Name param4Value:(double)param4Value
                                       param5Name:(NSString *)param5Name param5Value:(double)param5Value {
        [FIRAnalytics logEventWithName:eventName parameters:@{
                                                              param1Name:param1Value,
                                                              param2Name:[NSNumber numberWithInteger:param2Value],
                                                              param3Name:[NSNumber numberWithInteger:param3Value],
                                                              param4Name:[NSNumber numberWithFloat:param4Value],
                                                              param5Name:[NSNumber numberWithBool:param5Value]
                                                              }];
    }

    -(void)logLevelStart:(NSString *)levelName {
        [FIRAnalytics logEventWithName:kFIREventLevelStart parameters:@{
                                                                        kFIRParameterLevelName:levelName
                                                                        }];
    }

    -(void)logLevelEndParamsIntIntFloatBoolean:(NSString *)levelName
                                    param1Name:(NSString *)param1Name param1Value:(double)param1Value
                                    param2Name:(NSString *)param2Name param2Value:(double)param2Value
                                    param3Name:(NSString *)param3Name param3Value:(double)param3Value
                                    param4Name:(NSString *)param4Name param4Value:(double)param4Value {
        [FIRAnalytics logEventWithName:kFIREventLevelEnd parameters:@{
                                                                      kFIRParameterLevelName:levelName,
                                                                      param1Name:[NSNumber numberWithInteger:param1Value],
                                                                      param2Name:[NSNumber numberWithInteger:param2Value],
                                                                      param3Name:[NSNumber numberWithFloat:param3Value],
                                                                      param4Name:[NSNumber numberWithBool:param4Value]
                                                                      }];
    }

    -(void)logEarnVirtualCurrency:(NSString *)currencyName currencyAmount:(double)amount {
        [FIRAnalytics logEventWithName:kFIREventEarnVirtualCurrency parameters:@{
                                                                                 kFIRParameterVirtualCurrencyName:currencyName,
                                                                                 kFIRParameterValue:[NSNumber numberWithInteger:amount]
                                                                                 }];
    }

    -(void)logSpendVirtualCurrency:(NSString *)currencyName itemName:(NSString *)itemName currencyAmount:(double)amount {
        [FIRAnalytics logEventWithName:kFIREventSpendVirtualCurrency parameters:@{
                                                                                  kFIRParameterVirtualCurrencyName:currencyName,
                                                                                  kFIRParameterItemName:itemName,
                                                                                  kFIRParameterValue:[NSNumber numberWithInteger:amount]
                                                                                  }];
    }
    
    -(void)setUserProperty:(NSString *)propertyName withValue:(NSString *)value {
        [FIRAnalytics setUserPropertyString:value forName:propertyName];
    }
    
@end
