package com.example.myapplication;


import okhttp3.logging.HttpLoggingInterceptor;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

public class PostClient {

    private static Retrofit getRetrofit(){

        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor();
        Retrofit retrofit = new Retrofit.Builder().baseUrl("http/api.larntech.net/").addConverterFactory(GsonConverterFactory.create()).build();

        return retrofit;
    }

}
