package ${YYAndroidPackageName};

import ${YYAndroidPackageName}.GooglePushNotificationsManager;
import ${YYAndroidPackageName}.GoogleFirebaseNotificationsInstanceService;
import ${YYAndroidPackageName}.GoogleFirebaseNotificationsMessagingService;

import android.util.Log;
import android.os.Bundle;
import android.content.Intent;

public class GooglePushNotificationsExtension extends RunnerSocial
{	
	private GoogleFirebaseNotificationsMessagingService 	m_messagingService = null;
	private GoogleFirebaseNotificationsInstanceService  	m_instanceService = null;
	private GooglePushNotificationsManager					m_notificationsManager = null;

	public void Init()
	{
		Log.i("yoyo", "GooglePushNotificationsExtension::Init");
		
		// Initialise local push notifications manager
		m_notificationsManager = new GooglePushNotificationsManager();
		if(!m_notificationsManager.Init(RunnerActivity.CurrentActivity))
		{
			Log.i("yoyo", "GooglePushNotificationsExtension: Google Play Services not available on current device!");
		}

		// Handle notification data passed on to activity via its intent
		processIntentNotificationData();
	}

	@Override
	public void onResume()
	{
		Log.i("yoyo", "GooglePushNotificationsExtension::onResume");

		// Handle notification data passed on to activity via its intent
		processIntentNotificationData();
	}

	private void processIntentNotificationData()
	{
		// Handle remote notification delivered in intent extras
		// This will occur if a remote notification is received while the app is in the background/shut down
		// This will get triggered if the app is launched from that notification
		Bundle intentExtras = RunnerActivity.CurrentActivity.getIntent().getExtras();
		//Log.i("yoyo", "GooglePushNotificationsExtension::processIntentNotificationData. Intent: " + RunnerActivity.CurrentActivity.getIntent() + ". Intent Extras: " + intentExtras + ".");
		//Log.i("yoyo", "Intent extras: " + RunnerActivity.CurrentActivity.getIntent().getStringExtra(GooglePushNotificationsManager.KEY_NTF_DATA));

		if (intentExtras != null) 
		{
			//for (String key : intentExtras.keySet()) 
			//{
				//Log.i("yoyo", "Extras: " + key + " => " + intentExtras.get(key));
			//}

			// Check if we have any pending notification data waiting to be sent to the runner
			String notificationData = intentExtras.getString(GooglePushNotificationsManager.KEY_NTF_DATA);
			String notificationId = intentExtras.getString(GooglePushNotificationsManager.KEY_NTF_ID);
			if(notificationId == null)
			{
				notificationId = intentExtras.getString(GooglePushNotificationsManager.KEY_GOOGLE_MESSAGE_ID);
				notificationId += "-" + Integer.toString(intentExtras.getInt(GooglePushNotificationsManager.KEY_GOOGLE_SENT_TIME, 0));
			}

			// Make sure we haven't handled this data already
			boolean notificationHandled = GooglePushNotificationsManager.isMessageHandled(RunnerActivity.CurrentActivity, notificationId);
			Log.i("yoyo", "GooglePushNotificationsExtension: Detected notification ID " + notificationId + " with data: " + notificationData + ". Handled: " + notificationHandled);

			// Check if we have notification data and send through a RT event
			if(notificationData != null && notificationHandled == false)
			{
				int notificationType = intentExtras.getInt(GooglePushNotificationsManager.KEY_NTF_TYPE, GooglePushNotificationsManager.PUSH_EVENT_REMOTE);
				Log.i("yoyo", "GooglePushNotificationsExtension: App launched from notification - sending data to runner: " + notificationData);

				// Remote notifications have a google message ID - use that to determine what type of notification this is
				GooglePushNotificationsManager.runnerPushNotificationEvent(notificationData, notificationType, true);
																			  
				// Mark notification as handled
				GooglePushNotificationsManager.setMessageHandled(RunnerActivity.CurrentActivity, notificationId);
			}
		}
	}
	
	// ==================================================
	// PUSH NOTIFICATIONS
	// ==================================================
	public double setupRemotePushNotifications(String appID, String apiKey, String dbUrl, String storageBucket)
	{
		Log.i("yoyo", "GooglePushNotificationsExtension: Setting up remote push notifications. Firebase App ID: " + appID + ". API key: " + apiKey + ". DB URL: " + dbUrl + ". Storage bucket: " + storageBucket);
		
		// Initialise Firebase app instance
		m_instanceService = new GoogleFirebaseNotificationsInstanceService();
		if(!m_instanceService.Init(RunnerActivity.CurrentActivity, appID, apiKey, dbUrl, storageBucket))
		{
			return 0.0;
		}

		// Initialise remote messaging service
		m_messagingService = new GoogleFirebaseNotificationsMessagingService();
		m_messagingService.Init();
		return 1.0;
	}
	
	public int pushGetLocalNotification(Integer iIndex, Integer dsMap)
	{
		Log.i("yoyo", "GooglePushNotificationsExtension::PushGetLocalNotification");
		if( m_notificationsManager != null )
		{
			return m_notificationsManager.pushGetLocalNotification(iIndex, dsMap);
		}
		
		return -1;
	}
	
	public int pushCancelLocalNotification(Integer iIndex)
	{
		Log.i("yoyo", "GooglePushNotificationsExtension::pushCancelLocalNotification");
		if( m_notificationsManager != null )
		{
			return m_notificationsManager.pushCancelLocalNotification( iIndex);
		}
		
		return -1;
	}
	
	public void pushLocalNotification(Float fireTime, String title, String message, String data)
	{
		Log.i("yoyo", "GooglePushNotificationsExtension::PushLocalNotification");
		
		if(m_notificationsManager != null)
		{
			if(fireTime != 0.0f)
			{
				m_notificationsManager.delayPushNotification(title, message, data, fireTime);
			}
			else
			{
				m_notificationsManager.showPushNotification(title, message, data, GooglePushNotificationsManager.PUSH_EVENT_LOCAL);
			}
		}
		else
		{
			Log.i("yoyo", "GooglePushNotificationsExtension: Push notifications not enabled");
		}
	}
}