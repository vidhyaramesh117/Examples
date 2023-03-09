package com.example.toolbar;

import android.os.Bundle;

import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;

import java.util.ArrayList;


public class stared_Fragment extends Fragment
{

    View rootview;
    RecyclerView recyclerView;
    ArrayList<String> arrayList=new ArrayList<>();
    Adapter Adapter;
    ItemClickListener itemClickListener;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState)
    {
        rootview = inflater.inflate(R.layout.fragment_stared_, container, false);
        // initialize variable
        RecyclerView recyclerView;
        ArrayList<String> arrayList=new ArrayList<>();
        Adapter adapter;
        ItemClickListener itemClickListener;

        // assign variable
        recyclerView=rootview.findViewById(R.id.recycler_view);

        // use for loop
        for(int i=0;i<15;i++)
        {
            // add values in array list
            arrayList.add("Address "+i);
        }

        // Initialize listener
        itemClickListener=new ItemClickListener() {
            @Override
            public void onClick(int position, String value) {
                // Display toast
                Toast.makeText(getContext(),"Position : "
                        +position +" || Value : "+value,Toast.LENGTH_SHORT).show();
            }
        };

        // set layout manager
        recyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
        // Initialize adapter
        adapter=new Adapter(arrayList,itemClickListener);
        // set adapter
        recyclerView.setAdapter(adapter);


        return rootview;

    }
}