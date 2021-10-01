package com.example.groceries.list.algorithm

import com.example.groceries.list.dtos.GroceriesEntry

interface ReduceStrategy {
    fun apply(entry1: GroceriesEntry, entry2: GroceriesEntry): GroceriesEntry
}
