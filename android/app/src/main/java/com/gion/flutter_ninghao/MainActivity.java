package com.gion.flutter_ninghao;

import io.flutter.embedding.android.FlutterActivity;
import android.os.Bundle;
import android.widget.Toast;
import android.os.PersistableBundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Timer;
import java.util.TimerTask;

import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {
    private MethodChannel mMethodChannel;

    private BasicMessageChannel<Object> mBasicMessageChannel;

    private EventChannel mEventChannel;
    private Timer timer;
    private TimerTask task;

    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        super.configureFlutterEngine(flutterEngine);
//        GeneratedPluginRegistrant.registerWith(flutterEngine);
        addMethodChannel();
        addBasicMessageChannel();
        addEventChannel();

    }


    @Override
    public void onCreate(@Nullable Bundle savedInstanceState, @Nullable PersistableBundle persistentState) {
        super.onCreate(savedInstanceState, persistentState);
//        GeneratedPluginRegistrant.registerWith(this.getFlutterEngine());
        addMethodChannel();
        addBasicMessageChannel();
        addEventChannel();

    }

    private void addMethodChannel() {
        mMethodChannel = new MethodChannel(getFlutterEngine().getDartExecutor().getBinaryMessenger(), "method_channel_sample");
        mMethodChannel.setMethodCallHandler((methodCall, result) -> {

            String method = methodCall.method;

            if ("getInfo".equals(method)) {

                String userName = (String) methodCall.arguments;

                if (userName.equals("rocx")) {
                    String user = "name:rocx, age:18";
                    result.success(user);
                } else {
                    result.success("user not found");

                    invokeSayHelloMethod();
                }
            }

        });
    }


    private void addBasicMessageChannel() {
        mBasicMessageChannel = new BasicMessageChannel<>(getFlutterEngine().getDartExecutor().getBinaryMessenger(), "basic_message_channel_sample", StandardMessageCodec.INSTANCE);
        mBasicMessageChannel.setMessageHandler((object, reply) -> {

            reply.reply("receive " + object.toString() + " from flutter");

            mBasicMessageChannel.send("native say hello to flutter");
        });
    }


    private void addEventChannel() {
        mEventChannel = new EventChannel(getFlutterEngine().getDartExecutor().getBinaryMessenger(), "event_channel_sample");
        mEventChannel.setStreamHandler(new EventChannel.StreamHandler() {
            @Override
            public void onListen(Object o, EventChannel.EventSink eventSink) {

                task = new TimerTask() {
                    @Override
                    public void run() {
                        runOnUiThread(() -> eventSink.success("i miss you " + System.currentTimeMillis()));

                    }
                };
                timer = new Timer();
                timer.schedule(task, 2000, 3000);
            }

            @Override
            public void onCancel(Object o) {
                task.cancel();
                timer.cancel();
                task = null;
                timer = null;
            }
        });
    }


    private void invokeSayHelloMethod() {
        mMethodChannel.invokeMethod("sayHello", "", new MethodChannel.Result() {
            @Override
            public void success(Object o) {

                Toast.makeText(MainActivity.this, o.toString(), Toast.LENGTH_LONG).show();
            }

            @Override
            public void error(String s, String s1, Object o) {

            }

            @Override
            public void notImplemented() {

            }
        });
    }
}
