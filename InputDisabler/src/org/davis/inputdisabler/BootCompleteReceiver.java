package org.davis.inputdisabler;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class BootCompleteReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("android.intent.action.BOOT_COMPLETED")) {
            Intent intent2 = new Intent();
            intent2.setClass(context, InputDisablerService.class);
            context.startService(intent2);
        }
    }
}
