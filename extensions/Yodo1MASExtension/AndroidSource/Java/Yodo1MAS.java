package ${YYAndroidPackageName};

import ${YYAndroidPackageName}.RunnerActivity;
import com.yoyogames.runner.RunnerJNILib;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;
import android.content.DialogInterface;

//import com.yodo1.mas.Yodo1Mas;

//import com.yodo1.mas.**;
//import com.yodo1.**;

import com.yodo1.mas.*;
import com.yodo1.mas.ads.*;
import com.yodo1.mas.error.*;
import com.yodo1.mas.event.*;

//import com.yodo1.advert.callback.BannerCallback;
//import com.yodo1.advert.callback.InterstitialCallback;
//import com.yodo1.advert.callback.VideoCallback;
//import com.yodo1.advert.entity.AdErrorCode;
//import com.yodo1.advert.open.Yodo1Mas;

public class Yodo1MAS extends RunnerSocial {
  //private static final String TAG = MainActivity.class.getSimpleName();
  private static final int Yodo1MAS_ASyncEvent = 2909;
  private static final int EVENT_OTHER_SOCIAL = 70;

  @Override
  public void Init() {
      
      Log.i("yoyo","Yodo1 MAS SDK Init");
  
      //START SDK:
          String appKey = RunnerActivity.CurrentActivity.mYYPrefs.getString("com.yodo1mas.APP_KEY");
          Yodo1Mas.getInstance().init(RunnerActivity.CurrentActivity, appKey, new Yodo1Mas.InitListener() {
            @Override
            public void onMasInitSuccessful() {
                Log.i("yoyo","Yodo1 onMasInitSuccessful");
          }

          @Override
          public void onMasInitFailed(/* @NonNull */ Yodo1MasError error) {
              Log.i("yoyo","Yodo1 onMasInitFailed");
          }
          });
      
      
      //BANNER:
          Yodo1Mas.getInstance().setBannerListener(new Yodo1Mas.BannerListener() {
          @Override
          public void onAdOpened(/* @NonNull */ Yodo1MasAdEvent event) {
              Log.i("yoyo","Yodo1 BANNER onAdOpened");
              
                  String message = "BannerCallback onBannerShow";
                  Log.i("yoyo", message);
                  int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
                    RunnerJNILib.DsMapAddString( dsMapIndex, "type", "yodo1mas_bannershow" );
                    RunnerJNILib.DsMapAddDouble( dsMapIndex,"id",Yodo1MAS_ASyncEvent);
                    RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
              }

          @Override
          public void onAdError(/* @NonNull */ Yodo1MasAdEvent event, /* @NonNull */ Yodo1MasError error) {
              Log.i("yoyo","Yodo1 BANNER onAdError");
          
              
             //     String message = "BannerCallback onBannerShowFailed, errorCode: " + error;
             //     //Log.i("yoyo", message);
             //     int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
             //       RunnerJNILib.DsMapAddString( dsMapIndex, "type", "yodo1mas_bannershowfailed" );
             //       RunnerJNILib.DsMapAddDouble( dsMapIndex,"id",Yodo1MAS_ASyncEvent);
             //       RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
              
          }

          @Override
          public void onAdClosed(/* @NonNull */ Yodo1MasAdEvent event) {
              Log.i("yoyo","Yodo1 BANNER onAdClosed");
          
          }
      });
  
      
      //INTERSTITIAL:
          Yodo1Mas.getInstance().setInterstitialListener(new Yodo1Mas.InterstitialListener() {
          @Override
          public void onAdOpened(/* @NonNull */ Yodo1MasAdEvent event) {
              Log.i("yoyo","Yodo1 INTERSTITIAL onAdOpened");
          }

          @Override
          public void onAdError(/* @NonNull */ Yodo1MasAdEvent event, /* @NonNull */ Yodo1MasError error) {
              Log.i("yoyo","Yodo1 INTERSTITIAL onAdError");
              
          }

          @Override
          public void onAdClosed(/* @NonNull */ Yodo1MasAdEvent event) {
              Log.i("yoyo","Yodo1 INTERSTITIAL onAdClosed");
          
          }
      });
      
      //Rewarded:
          Yodo1Mas.getInstance().setRewardListener(new Yodo1Mas.RewardListener() {
          @Override
          public void onAdOpened(/* @NonNull */ Yodo1MasAdEvent event) {
              String message = "VideoCallback onVideoShow";
              Log.i("yoyo", message);
              int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
                  RunnerJNILib.DsMapAddString( dsMapIndex, "type", "yodo1mas_videoshow" );
                  RunnerJNILib.DsMapAddDouble( dsMapIndex,"id",Yodo1MAS_ASyncEvent);
                  RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
          }

          @Override
          public void onAdvertRewardEarned(/* @NonNull */ Yodo1MasAdEvent event) {
              boolean isFinished = true;
              String message = "VideoCallback onVideoClosed, isFinished: " + isFinished;
              Log.i("yoyo", message);
              int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
                  RunnerJNILib.DsMapAddString( dsMapIndex, "type", "yodo1mas_videoclosed" );
                  RunnerJNILib.DsMapAddDouble( dsMapIndex,"id",Yodo1MAS_ASyncEvent);
              if(isFinished){
                RunnerJNILib.DsMapAddDouble( dsMapIndex,"isFinished",1);
              }else{
                RunnerJNILib.DsMapAddDouble( dsMapIndex,"isFinished",0);
              }
                  RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
          }

          @Override
          public void onAdError(/* @NonNull */ Yodo1MasAdEvent event, /* @NonNull */ Yodo1MasError error) {
              String message = "VideoCallback onVideoShowFailed, errorCode: " + error;
              Log.i("yoyo", message);
              int dsMapIndex = RunnerJNILib.jCreateDsMap(null, null, null);
                  RunnerJNILib.DsMapAddString( dsMapIndex, "type", "yodo1mas_videoshowfailed" );
                  RunnerJNILib.DsMapAddDouble( dsMapIndex,"id",Yodo1MAS_ASyncEvent);
                  RunnerJNILib.CreateAsynEventWithDSMap(dsMapIndex,EVENT_OTHER_SOCIAL);
          }
          
          @Override
          public void onAdClosed(/* @NonNull */ Yodo1MasAdEvent event) {
              
          }
      });
      
      
      Log.i("yoyo","Yodo1 MAS SDK end Init");
  }


    
    
    

  // INTERSTITIAL
    public String yodo1InterstitialIsReady(){
      boolean readyAd = Yodo1Mas.getInstance().isInterstitialAdLoaded();
      if(readyAd){
        return "INTERSTITIAL_READY";
      }else{
        return "INTERSTITIAL_NOTREADY";
      }

    }
    
  public void yodo1ShowInterstitialAd() {
    Log.i("yoyo", "YODO1MAS:Showing Interstitial");

      Yodo1Mas.getInstance().showInterstitialAd(RunnerActivity.CurrentActivity);

  }

    
    
    
  //Rewarded
    public String yodo1RewardedVideoIsReady(){
      boolean readyAd = Yodo1Mas.getInstance().isRewardedAdLoaded();
      if(readyAd){
        return "INTERSTITIAL_READY";
      }else{
        return "INTERSTITIAL_NOTREADY";
      }
    }
    
  public void yodo1ShowRewardedVideoAd() {
      
    Yodo1Mas.getInstance().showRewardedAd(RunnerActivity.CurrentActivity);
  }

    
    
    
    
  //BANNER
    public String yodo1BannerIsReady(){
        
        boolean BannerisReady = Yodo1Mas.getInstance().isBannerAdLoaded();

        if(BannerisReady){
          return "BANNER_READY";
        }else{
          return "BANNER_NOTREADY";
        }
        
    }
    
    public void yodo1HideBannerAd(){
        Yodo1Mas.getInstance().dismissBannerAd();
    }
        
      public void yodo1ShowBannerAd(){
          
          
          Yodo1Mas.getInstance().showBannerAd(RunnerActivity.CurrentActivity);
          
          
    }

}
