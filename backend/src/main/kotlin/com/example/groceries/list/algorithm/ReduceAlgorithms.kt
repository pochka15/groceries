package com.example.groceries.list.algorithm

import com.example.groceries.list.dtos.GroceriesEntry

fun reduceGroupingByIngredientAndUnit(
    entries: List<GroceriesEntry>,
    reduceStrategy: ReduceStrategy
): List<GroceriesEntry> {
    return entries
        .groupBy { it.ingredient.name }
        .flatMap { reduceGroupingByUnit(it.value, reduceStrategy) }
}

fun reduceGroupingByUnit(entries: List<GroceriesEntry>, reduceStrategy: ReduceStrategy): List<GroceriesEntry> {
    return entries.groupBy { entry -> entry.unit }
        .map { it.value.reduce { acc, entry -> reduceStrategy.apply(acc, entry) } }
}