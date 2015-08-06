package com.shreyaschand.dragonsmash;

import javax.inject.Singleton;

import dagger.Component;

@Singleton
@Component(modules = {AppModule.class})
public interface AppComponent {
    // Add classes that need injection here
    // void inject(FragmentName fragment);
}
