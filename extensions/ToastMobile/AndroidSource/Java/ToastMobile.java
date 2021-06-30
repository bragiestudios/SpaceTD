/*
    ---> Toast - Mobile Extension
 
    ---> Author: Irlan Bragi
    ---> Organization: Bragi Estúdios
    ---> Creation date: July 2020
    ---> Contact: team@bragiestudios.com
 
    ---> Copyright © 2020 Bragi Estúdios. All rights reserved. https://bragiestudios.com
*/

package ${YYAndroidPackageName};
import ${YYAndroidPackageName}.R;

import android.app.Activity;
import android.util.Log;

import android.widget.Toast;


public class ToastMobile
{

    Activity myActivity=RunnerActivity.CurrentActivity;

    //-------> show_toast_mobile
        
        public double show_toast_mobile(final String _str_Toast_)
        {
            myActivity.runOnUiThread(new Runnable() {
                  public void run() {
                      
                      Toast.makeText(myActivity, _str_Toast_, Toast.LENGTH_LONG).show();
                      
                      //--> Log.i("yoyo", "show Toast");
                  }
              });
            
            return 1;
        }
        
    //<------- show_toast_mobile
    
    
} // End of class
