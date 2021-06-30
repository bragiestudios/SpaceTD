package ${YYAndroidPackageName};

import ${YYAndroidPackageName}.RunnerActivity;
import ${YYAndroidPackageName}.GooglePushNotificationsManager;
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

import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.ConnectionResult;

import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.iid.InstanceIdResult;

import com.google.firebase.messaging.RemoteMessage;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.FirebaseMessagingService;

public class GoogleFirebaseNotificationsMessagingService extends FirebaseMessagingService
{
	// Current app context
	public void Init()
	{
	}

	@Override 
	public void onMessageReceived(RemoteMessage remoteMessage) 
	{
		String messageType = remoteMessage.getMessageType();
		Map<String, String> extraData = remoteMessage.getData();

		// Log remote notification data
		Log.i("yoyo", "GoogleFirebaseNotificationsMessagingService onMessageReceived called! Current activity: " + RunnerActivity.CurrentActivity);
		/*
		Log.i("yoyo", "collapsekey: " + remoteMessage.getCollapseKey());
		Log.i("yoyo", "from: " + remoteMessage.getFrom());
		Log.i("yoyo", "message id: " + remoteMessage.getMessageId());
		Log.i("yoyo", "message type:: " + remoteMessage.getMessageType());
		Log.i("yoyo", "to: " + remoteMessage.getTo());
		Log.i("yoyo", "send time: " + remoteMessage.getSentTime());
		Log.i("yoyo", "ttl: " + remoteMessage.getTtl());
		Log.i("yoyo", "title: " + remoteMessage.getNotification().getTitle());
		Log.i("yoyo", "body: " + remoteMessage.getNotification().getBody());
		Log.i("yoyo", "click action: " + remoteMessage.getNotification().getClickAction());
		Log.i("yoyo", "color: " + remoteMessage.getNotification().getColor());
		Log.i("yoyo", "icon: " + remoteMessage.getNotification().getIcon());
		Log.i("yoyo", "data: " + extraData.toString());
		*/

		// Trigger our notification
		GooglePushNotificationsManager notificationsManager = GooglePushNotificationsManager.getInstance();
		if(notificationsManager != null)
		{
			notificationsManager.showPushNotification(remoteMessage.getNotification().getTitle(), 
													  remoteMessage.getNotification().getBody(), 
													  extraData == null ? null : extraData.get(GooglePushNotificationsManager.KEY_NTF_DATA),
													  GooglePushNotificationsManager.PUSH_EVENT_REMOTE);
		}
	}
	
	@Override
	public void onNewToken(String token) 
	{
		//Log.i("yoyo", "Retrieved firebase token from GoogleFirebaseNotificationsMessagingService::onNewToken: " + token);
	}
}