package ${YYAndroidPackageName};

import android.util.Log;
import android.content.SharedPreferences;
import android.content.Context;
import android.preference.PreferenceManager;

import androidx.annotation.NonNull;

import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.iid.FirebaseInstanceId;
//import com.google.firebase.iid.FirebaseInstanceIdService; //Commented FirebaseInstanceIdService
import com.google.firebase.messaging.FirebaseMessagingService; //ADD FirebaseMessagingService
import com.google.firebase.iid.InstanceIdResult;

import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.ConnectionResult;

//public class GoogleFirebaseNotificationsInstanceService extends FirebaseInstanceIdService //Commented FirebaseInstanceIdService
public class GoogleFirebaseNotificationsInstanceService extends FirebaseMessagingService //ADD FirebaseMessagingService
{
    private static final String PREFS_KEY_TOKEN = "GoogleFirebaseNotificationsInstanceServiceToken";

    public GoogleFirebaseNotificationsInstanceService()
    {
    }

    public boolean Init(Context context, String appID, String apiKey, String dbUrl, String storageBucket)
    {
		FirebaseOptions.Builder builder = new FirebaseOptions.Builder()
			.setApplicationId(appID)
			.setApiKey(apiKey)
			.setDatabaseUrl(dbUrl)
			.setStorageBucket(storageBucket);
		
		FirebaseApp app = FirebaseApp.initializeApp(context, builder.build());
		if(app != null)
		{
			Log.i("yoyo", "Firebase app initialized successfully.");
			return true;
		}

		Log.i("yoyo", "Failed to initialize Firebase App.");
		return false;
    }

    @Override
  public void onNewToken(String token) //Added onNewToken(String token) method, onTokenRefresh() is depreciated.
    {
        // Get updated InstanceID token.
        String refreshedToken = FirebaseInstanceId.getInstance().getToken();
		Log.d("yoyo", "FCM registration token refreshed: " + refreshedToken);

		GooglePushNotificationsManager.runnerPushNotificationEvent(refreshedToken, GooglePushNotificationsManager.PUSH_EVENT_REGISTER, true);

        // If you want to send messages to this application instance or
        // manage this apps subscriptions on the server side, send the
        // Instance ID token to your app server.
        SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(getApplicationContext());
        preferences.edit().putString(PREFS_KEY_TOKEN, refreshedToken).apply();
    }
	
	public void RefreshToken()
	{
		try
		{
			FirebaseInstanceId.getInstance().getInstanceId().addOnCompleteListener(new OnCompleteListener<InstanceIdResult>() 
			{
				@Override
				public void onComplete(@NonNull Task<InstanceIdResult> task) 
				{
					if (!task.isSuccessful()) 
					{
						Log.i("yoyo", "getInstanceId failed ", task.getException());
						return;
					}
					
					String newToken = task.getResult().getToken();
					Log.i("yoyo", "FCM registration token refreshed: " + newToken);
					GooglePushNotificationsManager.runnerPushNotificationEvent(newToken, GooglePushNotificationsManager.PUSH_EVENT_REGISTER, true);
				}
			});
		}
		catch(Exception ex)
		{
			Log.i("yoyo", "Error refreshing FCM registration token: " + ex.getMessage() + ". Cause: " + ex.getCause() + ". Call stack: \n" + Log.getStackTraceString(ex));
			GooglePushNotificationsManager.runnerPushNotificationEvent("", GooglePushNotificationsManager.PUSH_EVENT_REGISTER, false);
		}
	}
}
