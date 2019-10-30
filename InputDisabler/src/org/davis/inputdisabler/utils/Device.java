package org.davis.inputdisabler.utils;

import android.util.Log;
import java.io.BufferedReader;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;

public final class Device {
    public static void enableDevices(boolean z, boolean z2, boolean z3) {
        if (z3) {
            if (!z || read_sysfs("/sys/class/sec/sec_touchkey/force_disable") <= 0) {
                try {
                    write_sysfs("/sys/class/input/input1/enabled", z);
                } catch (Exception e) {
                    String str = "InputDisablerDevice";
                    StringBuilder sb = new StringBuilder();
                    sb.append("Failed to ");
                    sb.append(z ? "enable" : "disable");
                    sb.append(" keys");
                    Log.e(str, sb.toString());
                }
            } else {
                Log.d("InputDisablerDevice", "Keys are force disabled, not turning on");
            }
        }
        if (z2) {
            try {
                write_sysfs("/sys/class/input/input2/enabled", z);
            } catch (Exception e2) {
                String str2 = "InputDisablerDevice";
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Failed to ");
                sb2.append(z ? "enable" : "disable");
                sb2.append(" touchscreen");
                Log.e(str2, sb2.toString());
            }
        }
    }

    public static void enableDevices(boolean z) {
        enableDevices(z, true, true);
    }

    public static void enableTouch(boolean z) {
        enableDevices(z, true, false);
    }

    public static void enableKeys(boolean z) {
        enableDevices(z, false, true);
    }

    private static boolean write_sysfs(String str, boolean z) throws Exception {
        FileOutputStream fileOutputStream = new FileOutputStream(str);
        byte[] bArr = new byte[2];
        bArr[0] = (byte) (z ? 49 : 48);
        bArr[1] = 10;
        fileOutputStream.write(bArr);
        fileOutputStream.close();
        return true;
    }

    public static int read_sysfs(String str) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(str));
            String readLine = bufferedReader.readLine();
            bufferedReader.close();
            return Integer.parseInt(readLine);
        } catch (IOException e) {
            e.printStackTrace();
            return -1;
        }
    }
}
