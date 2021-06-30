package ${YYAndroidPackageName};
import ${YYAndroidPackageName}.RunnerActivity;
import ${YYAndroidPackageName}.GooglePushNotificationsManager;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;

public class GooglePushNotificationAlarmReceiver extends BroadcastReceiver
{
	@Override
	public void onReceive(Context context, Intent intent) 
	{
		Log.i("yoyo", "GoogleNotificationAlarmReceiver: Local notification alarm received.");
		Log.i("yoyo", "Current activity: " + RunnerActivity.CurrentActivity);

		//This method is always called within the main thread of its process - jolly good!
		boolean bStoreMsg = false;
		
		//grab data from intent extras
		Bundle extras = intent.getExtras();
		String title = extras.getString(GooglePushNotificationsManager.KEY_NTF_TITLE);
		String message = extras.getString(GooglePushNotificationsManager.KEY_NTF_MESSAGE);
		String data = extras.getString(GooglePushNotificationsManager.KEY_NTF_DATA);
		
		/*
        if( RunnerActivity.CurrentActivity != null )
        {
        	//the app is running 
        	Log.i("yoyo", "GoogleNotificationAlarmReceiver: Runner Current Activity is set");
        	if( RunnerActivity.CurrentActivity.mbAppSuspended)
        	{
				Log.i("yoyo", "GoogleNotificationAlarmReceiver: App suspended.");

        		//in background - store the message (& send notification?)
        		bStoreMsg = true;
        	}
        	else
        	{
        		//in foreground - send directly to running foreground app, no need for notification
        		Log.i("yoyo", "GoogleFirebaseNotificationAlarmReceiver: Sending Local push message to running app...");
        		//RunnerJNILib.GCMPushResult(msgData, GCMPush.PUSH_EVENT_REMOTE, true );
			}
        }
        else
        {
        	Log.i("yoyo", "GoogleNotificationAlarmReceiver: App is not running");
        	bStoreMsg = true;
		}
		*/

		GooglePushNotificationsManager.showPushNotificationWithContext(title, message, data, GooglePushNotificationsManager.PUSH_EVENT_LOCAL, context);
        
        //remove stored alarm details when alarm fires
        long timeMilli = System.currentTimeMillis();
        GooglePushNotificationsManager.removeOldStoredAlarms( context.getApplicationContext(), timeMilli );
    }
	
}