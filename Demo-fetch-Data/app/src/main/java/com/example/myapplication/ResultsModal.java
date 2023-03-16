package com.example.myapplication;

import com.google.gson.annotations.SerializedName;

import kotlin.jvm.internal.SerializedIr;

public class ResultsModal {

    @SerializedName("name")
    private String superName;

    public ResultsModal(String superName){
        this.superName=superName;
    }

    public String getSuperName() {
        return superName;
    }
}
