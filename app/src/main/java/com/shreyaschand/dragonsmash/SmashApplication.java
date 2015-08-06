package com.shreyaschand.dragonsmash;

import android.app.Application;

public class SmashApplication extends Application {

    private AppComponent component;

    @Override
    public void onCreate() {
        super.onCreate();
        component = DaggerAppComponent.builder()
                        .appModule(new AppModule(this))
                        .build();
    }

    public AppComponent getAppComponent() {
        return component;
    }
}
