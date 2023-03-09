package com.example.toolbar;

import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;

import java.text.CollationElementIterator;
import java.util.ArrayList;

public class Adapter extends RecyclerView.Adapter<Adapter.ViewHolder>
{
    // initialize variables
    ArrayList<String> arrayList;
    ItemClickListener itemClickListener;
    int selectedPosition=-1;

    // create constructor
    public Adapter(ArrayList<String> arrayList,ItemClickListener itemClickListener)
    {
        this.arrayList=arrayList;
        this.itemClickListener=itemClickListener;
    }

    @NonNull
    @Override
    public Adapter.ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        // Initialize view
        View view= LayoutInflater.from(parent.getContext())
                .inflate(R.layout.listitem_layout,parent,false);
        // return holder
        return new ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull Adapter.ViewHolder holder, int position) {
        // set value on text view
        holder.textView.setText(arrayList.get(position));

        holder.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // get adapter position
                int position=holder.getAdapterPosition();
                // call listener
                itemClickListener.onClick(position,arrayList.get(position));
                // update position
                selectedPosition=position;
                // notify
                notifyDataSetChanged();
            }
        });

        // check conditions
        if(selectedPosition==position)
        {
            // When current position is equal
            // to selected position
            // set black background color
            holder.cardView.setCardBackgroundColor(Color.parseColor("#000000"));
            // set white text color
            holder.textView.setTextColor(Color.parseColor("#FFFFFF"));

        }
        else
        {
            // when current position is different
            // set white background
            holder.cardView.setCardBackgroundColor(Color.parseColor("#FFFFFF"));
            // set black text color
            holder.textView.setTextColor(Color.parseColor("#000000"));

        }

    }

    @Override
    public int getItemCount() {
        // return array list size
        return arrayList.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        CardView cardView;
        TextView textView;

        public ViewHolder(@NonNull View itemView) {
            super(itemView);
            cardView=itemView.findViewById(R.id.card_view);
            textView=itemView.findViewById(R.id.card_tv);
        }
    }
}
