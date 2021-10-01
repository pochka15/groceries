package com.example.groceries.list.algorithm

import com.example.groceries.list.dtos.GroceriesEntry

class BaseReduceStrategy : ReduceStrategy {
    override fun apply(entry1: GroceriesEntry, entry2: GroceriesEntry): GroceriesEntry {
        if (entry1.unit != entry2.unit) throw Exception("Units can't be different when using the base strategy: unit1 is ${entry1.unit}, unit2 is ${entry2.unit}")
        val notes = listOf(entry1.note, entry2.note).filter { it.isNotBlank() }
        return GroceriesEntry(
            entry1.ingredient,
            entry1.amount + entry2.amount,
            entry1.unit,
            notes.joinToString("; "),
            entry1.originalRecipes + entry2.originalRecipes
        )
    }
}