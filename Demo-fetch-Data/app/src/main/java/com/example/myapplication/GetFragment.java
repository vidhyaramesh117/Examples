package com.example.myapplication;

import android.os.Bundle;

import androidx.fragment.app.Fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.Toast;

import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;


public class GetFragment extends Fragment {

    ListView listView;

    public GetFragment() {
        // Required empty public constructor
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View view = inflater.inflate(R.layout.fragment_get, container, false);

        listView = (ListView) view.findViewById(R.id.list_view);
        getSuperHeroes();

        return view;
    }

    private void getSuperHeroes() {

        Call<List<ResultsModal>> call = RetrofitClient.getInstance().getApi().getSuperHeroes();
        call.enqueue(new Callback<List<ResultsModal>>() {
            @Override
            public void onResponse(Call<List<ResultsModal>> call, Response<List<ResultsModal>> response) {
                List<ResultsModal> list = response.body();
                String[] heroes = new String[list.size()];
                for(int i = 0;i<list.size();i++){
                    heroes[i] = list.get(i).getSuperName();
                }

                listView.setAdapter(new ArrayAdapter<String>(getActivity(), android.R.layout.simple_list_item_1,heroes));

            }

            @Override
            public void onFailure(Call<List<ResultsModal>> call, Throwable t) {
                Toast.makeText(getActivity(), "an Error has Occured", Toast.LENGTH_SHORT).show();
            }
        });

    }


}