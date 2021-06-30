package ${YYAndroidPackageName};

import ${YYAndroidPackageName}.RunnerActivity;
import ${YYAndroidPackageName}.GooglePushNotificationAlarmReceiver;
import com.yoyogames.runner.RunnerJNILib;

import org.json.JSONObject;
import org.json.JSONException;

import java.util.Random;
import java.util.Map;

import android.util.Log;
import android.os.Build;
import android.widget.Toast;
import android.content.Context;
import android.net.Uri;
import android.media.RingtoneManager;
import android.graphics.Color;
import android.content.SharedPreferences;
import android.content.Intent;

import android.app.AlarmManager;
import android.app.NotificationManager;
import android.app.NotificationChannel;
import android.app.Notification;
import android.app.PendingIntent;

import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.core.app.NotificationCompat;
import androidx.core.app.TaskStackBuilder;

import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.ConnectionResult;

import com.google.firebase.FirebaseApp;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.iid.InstanceIdResult;

import com.google.firebase.messaging.RemoteMessage;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.FirebaseMessagingService;

public class GooglePushNotificationsManager
{
	// Default notifications channel
	private static final String DEFAULT_CHANNEL_ID = "GMS2DefaultChannel";

	// Keys for local push intent
	public static final String KEY_NTF_TITLE="ntf_title";
	public static final String KEY_NTF_MESSAGE="ntf_message";
	public static final String KEY_NTF_DATA="ntf_data";
	public static final String KEY_NTF_TYPE="ntf_type";
	public static final String KEY_NTF_ID="ntf_id";
	public static final String KEY_GOOGLE_MESSAGE_ID="google.message_id";
	public static final String KEY_GOOGLE_SENT_TIME="google.sent_time";
	
	// Keys for STORING details of pending notification alarms...what a pain
	private static final String PROP_ALARM_COUNT = "ntf_alarm_count";
	private static final String PROP_ALARM_DATA_N = "ntf_alarmdata_";

	// Keys for notifications storage
	public static final String PROPERTY_REG_ID = "registration_id";
    private static final String PROPERTY_APP_VERSION = "appVersion";
    private static final String PROPERTY_MESSAGE_COUNT="message_count";
    private static final String PROPERTY_MESSAGE_N="message_";
    private static final String PROPERTY_MESSAGE_TYPE_N="message_type_";
    private static final int PLAY_SERVICES_RESOLUTION_REQUEST = 9000;
	
	// Push notification event type
    public static final int PUSH_EVENT_REGISTER = 0;
    public static final int PUSH_EVENT_REMOTE = 1;
    public static final int PUSH_EVENT_LOCAL = 2;
	
	private static GooglePushNotificationsManager ms_instance;
	private Context m_context;

	public GooglePushNotificationsManager()
	{
		ms_instance = this;
	}

	public boolean Init(Context context)
	{
		m_context = context;
		
		if(!isPlayServicesAvailable())
		{
			return false;
		}
		
		return true;
	}
	
	public static GooglePushNotificationsManager getInstance()
	{
		return ms_instance;
	}
	
	private static NotificationManager getNotificationManager(Context context)
	{
		return (NotificationManager) context.getSystemService(Context.NOTIFICATION_SERVICE);
	}

	private boolean isPlayServicesAvailable() 
	{
		GoogleApiAvailability googleAPI = GoogleApiAvailability.getInstance();
		int result = googleAPI.isGooglePlayServicesAvailable(m_context);
		if(result != ConnectionResult.SUCCESS) 
		{
			Log.i("yoyo", "Google Play Services not found on device.");
            return false;
		}

		return true;
	}

	private static SharedPreferences getGcmPreferences(Context context) 
    {
        // This sample app persists the registration ID in shared preferences, but
        // how you store the regID in your app is up to you.
        return context.getSharedPreferences(RunnerActivity.class.getSimpleName(), Context.MODE_PRIVATE);
	}
	
	public static boolean isMessageHandled( Context context, String notificationId )
	{
		final SharedPreferences prefs = getGcmPreferences( context );
		boolean messageHandled = prefs.getBoolean(KEY_NTF_ID + "-" + notificationId, false);
		return messageHandled;
	}

	public static void setMessageHandled(Context context, String notificationId)
	{
		final SharedPreferences prefs = getGcmPreferences( context );
		String messageId = KEY_NTF_ID + "-" + notificationId;
		
		SharedPreferences.Editor editor = prefs.edit();
		editor.putBoolean(messageId, true);
    	editor.commit();
	}
	
	public static void storeMessage( Context context, int type, String data )
    {
    	final SharedPreferences prefs = getGcmPreferences( context );
    	int messageCount = prefs.getInt(PROPERTY_MESSAGE_COUNT, 0);
		++messageCount;
		
    	Log.i("yoyo", "GPNM: Store message " + messageCount + " data: " + data);
    	SharedPreferences.Editor editor = prefs.edit();
    	editor.putInt(PROPERTY_MESSAGE_COUNT, messageCount);
    	String keyData = PROPERTY_MESSAGE_N + Integer.toString(messageCount);
    	String keyType = PROPERTY_MESSAGE_TYPE_N + Integer.toString(messageCount);
    	editor.putString(keyData, data);
    	editor.putInt(keyType, type);
		editor.commit();
	}
	
	//
    public void deliverStoredMessages()
    {
    	final SharedPreferences prefs = getGcmPreferences(m_context);
    	int messageCount = prefs.getInt(PROPERTY_MESSAGE_COUNT, 0);
    	Log.i("yoyo", "GPNM: sending " + messageCount + " stored messages");
    	
    	if( messageCount > 0 )
    	{
    		for( int i = 1; i <= messageCount; ++i)
    		{
    			String keyData = PROPERTY_MESSAGE_N + Integer.toString(i);
    			String keyType = PROPERTY_MESSAGE_TYPE_N + Integer.toString(i);
    			String data = prefs.getString(keyData, "");
    			int msgType = prefs.getInt(keyType, PUSH_EVENT_REMOTE);
    			runnerPushNotificationEvent( data, msgType, true );
    		}
    	}
    	
    	//remove the messages
    	SharedPreferences.Editor editor = prefs.edit();
    	editor.putInt(PROPERTY_MESSAGE_COUNT, 0);
    	for( int i = 0; i < messageCount; ++i)
    	{
    		String key = PROPERTY_MESSAGE_N + Integer.toString(i);
    		editor.remove(key);
    	}
    	editor.commit();
    	
    	//we can remove notifications now, since we have delivered all the data to the app
    	NotificationManager notificationManager = getNotificationManager(m_context);
    	notificationManager.cancelAll();
	}
	
	private static int getUniqueNotificationId()
	{
		return (int)System.currentTimeMillis();
	}

	public void delayPushNotification(String title, String message, String data, Float fireTime)
	{
		long fireTimeMs = System.currentTimeMillis() + (long)(fireTime*1000.0);
		int uniqueID = (int)fireTimeMs;
		Log.i("yoyo", "delayPushNotification: Setting up alarm. FireTime: " + fireTime + ". FireTimeMS: " + fireTimeMs + ". System time: " + System.currentTimeMillis());

		Context appContext = m_context.getApplicationContext();
		Intent intent = new Intent( appContext, GooglePushNotificationAlarmReceiver.class);
    	intent.putExtra( KEY_NTF_TITLE, title );
    	intent.putExtra( KEY_NTF_MESSAGE, message );
		intent.putExtra( KEY_NTF_DATA, data);
		intent.putExtra( KEY_NTF_ID, Integer.toString(uniqueID));
		
    	PendingIntent pendingIntent = PendingIntent.getBroadcast(appContext, uniqueID, intent, PendingIntent.FLAG_ONE_SHOT);
		AlarmManager am = (AlarmManager)appContext.getSystemService(Context.ALARM_SERVICE);
		am.set(AlarmManager.RTC_WAKEUP, fireTimeMs, pendingIntent);
		storePendingLocalAlarm( title, message, data, fireTimeMs );
	}
	
	@RequiresApi(api = Build.VERSION_CODES.O)
	private static void setupChannels(Context context)
	{
		Log.i("yoyo", "setupChannels");

        CharSequence adminChannelName = context.getString(R.string.default_notification_channel_name);
        String adminChannelDescription = context.getString(R.string.default_notification_channel_description);

        NotificationChannel adminChannel;
        adminChannel = new NotificationChannel(DEFAULT_CHANNEL_ID, adminChannelName, NotificationManager.IMPORTANCE_HIGH);
        adminChannel.setDescription(adminChannelDescription);
        adminChannel.enableLights(true);
        adminChannel.setLightColor(Color.RED);
		adminChannel.enableVibration(true);
		
		NotificationManager notificationManager = getNotificationManager(context);
		if (notificationManager != null) 
		{
            notificationManager.createNotificationChannel(adminChannel);
        }
	}
	
	public void showPushNotification(String title, String message, String data, int type)
	{
		showPushNotificationWithContext(title, message, data, type, m_context);
	}

	public static void showPushNotificationWithContext(String title, String message, String data, int type, Context context)
	{
		Log.i("yoyo", "GPNM::showPushNotificationWithContext. App: " + RunnerActivity.CurrentActivity + ". App suspended: " + (RunnerActivity.CurrentActivity != null ? RunnerActivity.CurrentActivity.mbAppSuspended : false));

		// If the app is active, don't bother showing the notification pop-up
		// Just trigger the async event and bail
		if(RunnerActivity.CurrentActivity != null && !RunnerActivity.CurrentActivity.mbAppSuspended)
		{
			Log.i("yoyo", "Activity is not suspended. Skipping creation of notification badge..");
			runnerPushNotificationEvent(data, type, true);
			return;
		}

		//Setting up Notification channels for android O and above
		if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.O) 
		{
			setupChannels(context);
		}

		// Create an Intent for the activity you want to start
		int notificationId = getUniqueNotificationId();

		Intent resultIntent = new Intent(context, RunnerActivity.class);
		resultIntent.putExtra( KEY_NTF_TITLE, title );
    	resultIntent.putExtra( KEY_NTF_MESSAGE, message );
		resultIntent.putExtra( KEY_NTF_DATA, data);
		resultIntent.putExtra( KEY_NTF_TYPE, type);
		resultIntent.putExtra( KEY_NTF_ID, Integer.toString(notificationId));

		TaskStackBuilder stackBuilder = TaskStackBuilder.create(context);
		stackBuilder.addNextIntentWithParentStack(resultIntent);
		PendingIntent resultPendingIntent = stackBuilder.getPendingIntent(0, PendingIntent.FLAG_UPDATE_CURRENT);

		NotificationManager notificationManager = getNotificationManager(context);
		NotificationCompat.Builder notificationBuilder = new NotificationCompat.Builder(context, DEFAULT_CHANNEL_ID)
			.setDefaults(Notification.DEFAULT_ALL)
			.setSmallIcon(R.drawable.notification_icon)
			.setColor(context.getResources().getColor(R.color.notification_color))
			.setContentTitle(title)
			.setContentText(message)
			.setContentIntent(resultPendingIntent)
			.setAutoCancel(true);

		notificationManager.notify(notificationId, notificationBuilder.build());
	}

	public static void runnerPushNotificationEvent(String data, int type, boolean success)
	{
		RunnerJNILib.GCMPushResult(data, type, success);
	}

	private boolean pushGetLocalNotificationByIndex( int iIndex, int dsMap )
    {
    	//Log.i("yoyo", "pushGetLocalNotification:" + iIndex + " map=" + dsMap );
    	//i)find item N in stored pending local notifications
    	String alarmData = getStoredPendingLocalAlarm( m_context, iIndex );
    	if( alarmData != null )
    	{
    		//ii)fill return map
    		if( dsMap < 0 )
    		{
    			return true;	//no map supplied- return true value to indicate ntf index exists
    		}
    		
    		try
    		{
	    		JSONObject jobj = new JSONObject(alarmData);
	    		String title = jobj.getString("title");
	    		String message = jobj.getString("message");
	    		String data = jobj.getString("data");
	    		int id = jobj.getInt("time");
	    		
	    		RunnerJNILib.dsMapAddString(dsMap, "title", title );
	    		RunnerJNILib.dsMapAddString(dsMap, "message", message );
	    		RunnerJNILib.dsMapAddString(dsMap, "data", data );
    		
	    		return true;
    		}
    		catch(Exception ex )
    		{
    			Log.i("yoyo", ex.toString());
    		}
    	}
    	
    	return false;
    }
    
    public int pushGetLocalNotification( int iIndex, int dsMap)
    {
    	if( pushGetLocalNotificationByIndex( iIndex, dsMap ))
    	{
    		return iIndex;
    	}
    	return -1;
    }
    	
    public int pushCancelLocalNotification( int iIndex )
    {
    	//i)find item N in stored pending local notifications
    	Log.i("yoyo", "GoogleFirebaseNotificationsMessagingService: cancel alarm " + iIndex );
    	String alarmData = getStoredPendingLocalAlarm( m_context, iIndex );
    	if( alarmData != null )
    	{
    		//ii)extract id
    		try 
    		{
	    		JSONObject jobj = new JSONObject(alarmData);
	    		//String title = jobj.getString("title");
	    		//String message = jobj.getString("message");
	    		//String data = jobj.getString("data");
	    		long time= jobj.getInt("time");
	    		int uniqueID = (int)time;
	    		
	    		//iii)create a matching pending intent and cancel it
	    		Context appContext = m_context.getApplicationContext();
	        	Intent intent = new Intent( appContext, GooglePushNotificationAlarmReceiver.class);
	        	PendingIntent pendingIntent = PendingIntent.getBroadcast(appContext, uniqueID, intent, PendingIntent.FLAG_ONE_SHOT);
	    		
	        	pendingIntent.cancel();
	        	AlarmManager am = (AlarmManager)appContext.getSystemService(Context.ALARM_SERVICE);
				am.cancel( pendingIntent);
				
				Log.i("yoyo", "GoogleFirebaseNotificationsMessagingService: Removing alarm ID " + uniqueID);
	    		
	    		//iv)remove from the stored pending list
	    		if( removeStoredLocalAlarm( m_context, iIndex ) )
	    		{
					Log.i("yoyo", "GoogleFirebaseNotificationsMessagingService: Alarm removed successfully!");

	    			//return success
	    			return 1;
	    		}
    		}
    		catch(Exception ex)
    		{
    			Log.i("yoyo", ex.toString());
    		}
	    		
    	}
		
		Log.i("yoyo", "GoogleFirebaseNotificationsMessagingService: could not find notification with index " + iIndex );
		
    	//return fail status
    	return 0;
    }
    
    //because there is no way to retrieve pending alarms set on alarm manager,
    //we have to store the details to allow cancelling of a local notification 
    public void storePendingLocalAlarm(String title, String message, String data, long timeMilli)
    {
    	final SharedPreferences prefs = getGcmPreferences( m_context );
    	int alarmCount = prefs.getInt(PROP_ALARM_COUNT, 0);
    	Log.i("yoyo", "storePendingLocalAlarm: Store alarm " + alarmCount + " time=" + timeMilli);
    	
    	SharedPreferences.Editor editor = prefs.edit();
    	String json = null;
    	try 
    	{
	    	JSONObject jobj = new JSONObject();
	    	jobj.put( "title", title);
	    	jobj.put( "message", message);
	    	jobj.put( "data", data );
	    	jobj.put( "time", timeMilli );
	    	json = jobj.toString();
	    	
	    	String keyData = PROP_ALARM_DATA_N + Integer.toString(alarmCount);
	    	editor.putString(keyData, json);
	    	//increment count
	    	++alarmCount;
	    	editor.putInt(PROP_ALARM_COUNT, alarmCount);
	    	
	    	editor.commit();
    	}
    	catch(Exception ex)
    	{
    		Log.i("yoyo", ex.toString());
    	}
    }
    
    //+ability to remove stored alarm details from storage
    public static boolean removeStoredLocalAlarm( Context context, int index )
    {
    	//Log.i("yoyo", "GCM: Removing stored alarm " + index );
    	final SharedPreferences prefs = getGcmPreferences( context );
    	int alarmCount = prefs.getInt(PROP_ALARM_COUNT, 0);
    	if( index >= 0 && index < alarmCount )
    	{
	    	SharedPreferences.Editor editor = prefs.edit();
	    	
	    	//shuffle data from last entry into delete position (unless removing last entry )
	    	if( index < alarmCount-1)
	    	{
		    	String alarmData = getStoredPendingLocalAlarm( context, alarmCount-1 );
		    	String keyData = PROP_ALARM_DATA_N + Integer.toString(index);
		    	editor.putString( keyData, alarmData );
	    	}
	    	
	    	//remove data for last alarm
	    	String keyLast = PROP_ALARM_DATA_N + Integer.toString(alarmCount-1);
	    	editor.remove(keyLast);
	    	
	    	//decrement alarm count
	    	--alarmCount;
	    	editor.putInt(PROP_ALARM_COUNT, alarmCount);
	    	editor.commit();
	    	
	    	//Log.i("yoyo", "GCM: Removed alarm; stored count=" + alarmCount );
	    	return true;
    	}
    	Log.i("yoyo", "GPNM: Failed to remove alarm; stored count=" + alarmCount );
    	return false;
    }
    
    //remove fired alarms from stored list
    public static void removeOldStoredAlarms( Context context, long currTime )
    {
    	final SharedPreferences prefs = getGcmPreferences( context );
    	int alarmCount = prefs.getInt(PROP_ALARM_COUNT, 0);
    	//Log.i("yoyo", "removeOldStoredAlarms: alarmCount=" + alarmCount + " currTime=" + currTime );
    	
    	for( int i=0; i < alarmCount; ++i )
    	{
    		String data = getStoredPendingLocalAlarm( context, i );
    		if( data != null )
    		{
    			try
    			{
    				JSONObject jobj = new JSONObject(data);
    				long time = jobj.getLong("time");
    				//Log.i("yoyo", "found alarm " + i +" time=" + time );
	    			if( currTime >= time )
	    			{
	    				removeStoredLocalAlarm(context, i);
	    				--i;	//because we shuffled up - new item at current index
	    			}
    			} 
    			catch( JSONException ex)
    			{
    				Log.i("yoyo", ex.toString());
    			}
    			
    		}
    	}
    }
	
	//+retrieve stored alarm details for given 0-based index
    public static String getStoredPendingLocalAlarm( Context context, int index )
    {
    	final SharedPreferences prefs = getGcmPreferences( context );
    	String keyData = PROP_ALARM_DATA_N + Integer.toString(index);
    	String alarmData = prefs.getString(keyData, null );
    	return alarmData;
    }
}
