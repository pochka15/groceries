package com.example.groceries.list

import com.example.groceries.list.algorithm.BaseReduceStrategy
import com.example.groceries.list.algorithm.reduceGroupingByIngredientAndUnit
import com.example.groceries.list.dtos.GroceriesEntry
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/list")
class GroceriesCo(val groceriesSe: GroceriesSe) {
    @PostMapping
    fun generateGroceries(@RequestBody recipeIds: List<Long>): List<GroceriesEntry> {
        return with(groceriesSe) {
            reduceGroupingByIngredientAndUnit(
                generateGroceriesList(recipeIds),
                BaseReduceStrategy()
            )
        }
    }
}