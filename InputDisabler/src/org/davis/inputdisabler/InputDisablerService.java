package org.davis.inputdisabler;

import android.app.Service;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;

public class InputDisablerService extends Service {
    ScreenStateReceiver mScreenStateReceiver;

    public int onStartCommand(Intent intent, int i, int i2) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.DOZE_PULSE_STARTING");
        intentFilter.addAction("android.intent.action.PHONE_STATE");
        this.mScreenStateReceiver = new ScreenStateReceiver();
        registerReceiver(this.mScreenStateReceiver, intentFilter);
        return 1;
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onDestroy() {
        super.onDestroy();
        if (this.mScreenStateReceiver != null) {
            unregisterReceiver(this.mScreenStateReceiver);
        }
    }
}
