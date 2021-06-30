/*+*/package ${YYAndroidPackageName};
//-package com.lazybonesgames.firebaseandroidextension;

/*+*/import ${YYAndroidPackageName}.R;
/*+*/import com.yoyogames.runner.RunnerJNILib;

import android.os.Bundle;

import com.google.firebase.analytics.FirebaseAnalytics;

public class FirebaseWrapper {
    
    public static void logEvent(String eventName) {
        FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.getInstance(RunnerActivity.CurrentActivity);
        firebaseAnalytics.logEvent(eventName, null);
    }
    
    public static void logEventParamLong(String eventName, String paramName, double paramValue) {
        FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.getInstance(RunnerActivity.CurrentActivity);
        Bundle params = new Bundle(1);
        params.putDouble(paramName, Math.round(paramValue));
        firebaseAnalytics.logEvent(eventName, params);
    }
    
    public static void logEventParamString(String eventName, String paramName, String paramValue) {
        FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.getInstance(RunnerActivity.CurrentActivity);
        Bundle params = new Bundle(1);
        params.putString(paramName, paramValue);
        firebaseAnalytics.logEvent(eventName, params);
    }
    
    public static void logEventParamsStringInt(String eventName, String param1Name, String param1Value, String param2Name, double param2Value) {
        FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.getInstance(RunnerActivity.CurrentActivity);
        Bundle bundle = new Bundle(2);
        bundle.putString(param1Name, param1Value);
        bundle.putLong(param2Name, Math.round(param2Value));
        firebaseAnalytics.logEvent(eventName, bundle);
    }
    
    public static void logEventParamsIntBoolean(String eventName, String param1Name, double param1Value, String param2Name, double param2Value) {
        FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.getInstance(RunnerActivity.CurrentActivity);
        Bundle params = new Bundle(2);
        params.putLong(param1Name, Math.round(param1Value));
        params.putLong(param2Name, Math.round(param2Value));
        firebaseAnalytics.logEvent(eventName, params);
    }
    
    
    public static void logEventParamsIntIntIntDouble(String eventName,
                                                     String param1Name, double param1Value,
                                                     String param2Name, double param2Value,
                                                     String param3Name, double param3Value,
                                                     String param4Name, double param4Value) {
        FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.getInstance(RunnerActivity.CurrentActivity);
        Bundle params = new Bundle(4);
        params.putLong(param1Name, Math.round(param1Value));
        params.putLong(param2Name, Math.round(param2Value));
        params.putLong(param3Name, Math.round(param3Value));
        params.putDouble(param4Name, param4Value);
        firebaseAnalytics.logEvent(eventName, params);
    }
    
    
    public static void logEventParams4Strings(String eventName,
                                              String param1Name, String param1Value,
                                              String param2Name, String param2Value,
                                              String param3Name, String param3Value,
                                              String param4Name, String param4Value) {
        FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.getInstance(RunnerActivity.CurrentActivity);
        Bundle params = new Bundle(4);
        params.putString(param1Name, param1Value);
        params.putString(param2Name, param2Value);
        params.putString(param3Name, param3Value);
        params.putString(param4Name, param4Value);
        firebaseAnalytics.logEvent(eventName, params);
    }
    
    
    public static void logEventParams2Strings(String eventName,
                                              String param1Name, String param1Value,
                                              String param2Name, String param2Value) {
        FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.getInstance(RunnerActivity.CurrentActivity);
        Bundle params = new Bundle(2);
        params.putString(param1Name, param1Value);
        params.putString(param2Name, param2Value);
        firebaseAnalytics.logEvent(eventName, params);
    }
    
    
    public static void logEventParamsStringIntIntFloatBoolean(String eventName,
                                                              String param1Name, String param1Value,
                                                              String param2Name, double param2Value,
                                                              String param3Name, double param3Value,
                                                              String param4Name, double param4Value,
                                                              String param5Name, double param5Value) {
        FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.getInstance(RunnerActivity.CurrentActivity);
        Bundle bundle = new Bundle();
        bundle.putString(param1Name, param1Value);
        bundle.putLong(param2Name, Math.round(param2Value));
        bundle.putLong(param3Name, Math.round(param3Value));
        bundle.putDouble(param4Name, param4Value);
        bundle.putLong(param5Name, Math.round(param5Value));
        firebaseAnalytics.logEvent(eventName, bundle);
    }
    
    public static void logLevelStart(String levelName) {
        FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.getInstance(RunnerActivity.CurrentActivity);
        Bundle bundle = new Bundle();
        bundle.putString(FirebaseAnalytics.Param.LEVEL_NAME, levelName);
        firebaseAnalytics.logEvent(FirebaseAnalytics.Event.LEVEL_START, bundle);
    }
    
    public static void logLevelEndParamsIntIntFloatBoolean(String levelName,
                                                           String param1Name, double param1Value,
                                                           String param2Name, double param2Value,
                                                           String param3Name, double param3Value,
                                                           String param4Name, double param4Value) {
        FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.getInstance(RunnerActivity.CurrentActivity);
        Bundle bundle = new Bundle();
        bundle.putString(FirebaseAnalytics.Param.LEVEL_NAME, levelName);
        bundle.putLong(param1Name, Math.round(param1Value));
        bundle.putLong(param2Name, Math.round(param2Value));
        bundle.putDouble(param3Name, param3Value);
        bundle.putLong(param4Name, Math.round(param4Value));
        firebaseAnalytics.logEvent(FirebaseAnalytics.Event.LEVEL_END, bundle);
    }
    
    public static void logEarnVirtualCurrency(String currencyName, double amount) {
        FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.getInstance(RunnerActivity.CurrentActivity);
        Bundle params = new Bundle(2);
        params.putString(FirebaseAnalytics.Param.VIRTUAL_CURRENCY_NAME, currencyName);
        params.putInt(FirebaseAnalytics.Param.VALUE, (int)Math.round(amount));
        firebaseAnalytics.logEvent(FirebaseAnalytics.Event.EARN_VIRTUAL_CURRENCY, params);
    }
    
    public static void logSpendVirtualCurrency(String currencyName, String itemName, double amount) {
        FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.getInstance(RunnerActivity.CurrentActivity);
        Bundle params = new Bundle(3);
        params.putString(FirebaseAnalytics.Param.ITEM_NAME, itemName);
        params.putString(FirebaseAnalytics.Param.VIRTUAL_CURRENCY_NAME, currencyName);
        params.putInt(FirebaseAnalytics.Param.VALUE, (int)Math.round(amount));
        firebaseAnalytics.logEvent(FirebaseAnalytics.Event.SPEND_VIRTUAL_CURRENCY, params);
    }
    
    public static void setUserProperty(String name, String value) {
        FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.getInstance(RunnerActivity.CurrentActivity);
        firebaseAnalytics.setUserProperty(name, value);
    }
    
}
