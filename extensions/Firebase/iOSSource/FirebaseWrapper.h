@interface FirebaseWrapper : NSObject

    -(void)logEvent:(NSString *) eventName;
    
    -(void)logEventParamLong:(NSString *)eventName
                   paramName:(NSString *)paramName paramValue:(double)paramValue;

    -(void)logEventParamString:(NSString *)eventName
                    param1Name:(NSString *)param1Name param1Value:(NSString *)param1Value;

    -(void)logEventParamsStringInt:(NSString *)eventName
                        param1Name:(NSString *)param1Name param1Value:(NSString *)param1Value
                        param2Name:(NSString *)param2Name param2Value:(double)param2Value;

    -(void)logEventParamsIntBoolean:(NSString *)eventName
                         param1Name:(NSString *)param1Name param1Value:(double)param1Value
                         param2Name:(NSString *)param2Name param2Value:(double)param2Value;


    -(void)logEventParamsIntIntIntDouble:(NSString *)eventName
                              param1Name:(NSString *)param1Name param1Value:(double)param1Value
                              param2Name:(NSString *)param2Name param2Value:(double)param2Value
                              param3Name:(NSString *)param3Name param3Value:(double)param3Value
                              param4Name:(NSString *)param4Name param4Value:(double)param4Value;





-(void)logEventParams4Strings:(NSString *)eventName
                   param1Name:(NSString *)param1Name param1Value:(NSString *)param1Value
                   param2Name:(NSString *)param2Name param2Value:(NSString *)param2Value
                   param3Name:(NSString *)param3Name param3Value:(NSString *)param3Value
                   param4Name:(NSString *)param4Name param4Value:(NSString *)param4Value;





-(void)logEventParams2Strings:(NSString *)eventName
                   param1Name:(NSString *)param1Name param1Value:(NSString *)param1Value
                   param2Name:(NSString *)param2Name param2Value:(NSString *)param2Value;







    -(void)logEventParamsStringIntIntFloatBoolean:(NSString *)eventName
                                       param1Name:(NSString *)param1Name param1Value:(NSString *)param1Value
                                       param2Name:(NSString *)param2Name param2Value:(double)param2Value
                                       param3Name:(NSString *)param3Name param3Value:(double)param3Value
                                       param4Name:(NSString *)param4Name param4Value:(double)param4Value
                                       param5Name:(NSString *)param5Name param5Value:(double)param5Value;



    -(void)logLevelStart:(NSString *)levelName;

    -(void)logLevelEndParamsIntIntFloatBoolean:(NSString *)levelName
                                    param1Name:(NSString *)param1Name param1Value:(double)param1Value
                                    param2Name:(NSString *)param2Name param2Value:(double)param2Value
                                    param3Name:(NSString *)param3Name param3Value:(double)param3Value
                                    param4Name:(NSString *)param4Name param4Value:(double)param4Value;

    -(void)logEarnVirtualCurrency:(NSString *)currencyName currencyAmount:(double)amount;

    -(void)logSpendVirtualCurrency:(NSString *)currencyName itemName:(NSString *)itemName currencyAmount:(double)amount;

    -(void)setUserProperty:(NSString *)propertyName withValue:(NSString *)value;
    
@end
