package org.davis.inputdisabler;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import org.davis.inputdisabler.utils.Device;

public class ScreenStateReceiver extends BroadcastReceiver implements SensorEventListener {
    static int mScreenState = 0;
    Handler mDozeDisable;
    Sensor mSensor;
    SensorManager mSensorManager;

    public void onReceive(Context context, Intent intent) {
        if (intent != null) {
            final int i = Secure.getInt(context.getContentResolver(), "double_tap_to_wake", 0);
            String action = intent.getAction();
            char c = 65535;
            int hashCode = action.hashCode();
            if (hashCode != -2128145023) {
                if (hashCode != -1454123155) {
                    if (hashCode != -1326089125) {
                        if (hashCode == 1121528778 && action.equals("android.intent.action.DOZE_PULSE_STARTING")) {
                            c = 2;
                        }
                    } else if (action.equals("android.intent.action.PHONE_STATE")) {
                        c = 3;
                    }
                } else if (action.equals("android.intent.action.SCREEN_ON")) {
                    c = 0;
                }
            } else if (action.equals("android.intent.action.SCREEN_OFF")) {
                c = 1;
            }
            switch (c) {
                case 0:
                    handleScreenOn(true);
                    mScreenState = 1;
                    break;
                case 1:
                    if (i != 0) {
                        Device.enableKeys(false);
                    } else {
                        Device.enableDevices(false);
                    }
                    mScreenState = 0;
                    break;
                case 2:
                    mScreenState = 2;
                    this.mDozeDisable = new Handler();
                    this.mDozeDisable.postDelayed(new Runnable() {
                        public void run() {
                            switch (ScreenStateReceiver.mScreenState) {
                                case 2:
                                    ScreenStateReceiver.mScreenState = 0;
                                    if (i != 0) {
                                        Device.enableKeys(false);
                                        return;
                                    } else {
                                        Device.enableDevices(false);
                                        return;
                                    }
                                default:
                                    return;
                            }
                        }
                    }, 5000);
                    handleScreenOn(false);
                    break;
                case 3:
                    int callState = ((TelephonyManager) context.getSystemService("phone")).getCallState();
                    if (callState != 0) {
                        if (callState == 2) {
                            this.mSensorManager = (SensorManager) context.getSystemService("sensor");
                            this.mSensor = this.mSensorManager.getDefaultSensor(8);
                            this.mSensorManager.registerListener(this, this.mSensor, 3);
                            break;
                        }
                    } else {
                        if (this.mSensorManager != null) {
                            this.mSensorManager.unregisterListener(this);
                        }
                        if (mScreenState != 1) {
                            handleScreenOn(true);
                            mScreenState = 1;
                            break;
                        }
                    }
                    break;
            }
        }
    }

    public void onSensorChanged(SensorEvent sensorEvent) {
        if (sensorEvent.values[0] == 0.0f) {
            Device.enableDevices(false);
            mScreenState = 0;
            return;
        }
        handleScreenOn(true);
        mScreenState = 1;
    }

    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    private void handleScreenOn(boolean z) {
        if (z) {
            Device.enableKeys(true);
        }
        Device.enableTouch(true);
        Device.enableTouch(false);
        Device.enableTouch(true);
    }
}
