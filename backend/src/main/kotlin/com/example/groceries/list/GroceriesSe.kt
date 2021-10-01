package com.example.groceries.list

import au.com.console.jpaspecificationdsl.and
import com.example.groceries.ingredient.IngredientEn
import com.example.groceries.ingredient.dtos.IngredientWithCategory
import com.example.groceries.jpa.utils.fetch
import com.example.groceries.list.dtos.GroceriesEntry
import com.example.groceries.recipe.entry.RecipeEntriesRe
import com.example.groceries.recipe.entry.RecipeEntryEn
import com.example.groceries.recipe.entry.whereRecipeIdIsInGivenIds
import org.springframework.stereotype.Service

@Service
class GroceriesSe(val recipeEntriesRe: RecipeEntriesRe) {
    fun generateGroceriesList(recipeIds: List<Long>): List<GroceriesEntry> {
        return recipeEntriesRe.findAll(
            and(
                fetch(RecipeEntryEn::recipe),
                fetch(RecipeEntryEn::ingredient),
                whereRecipeIdIsInGivenIds(recipeIds),
            )
        )
            .map { it.toGroceriesEntry() }
    }

    private fun RecipeEntryEn.toGroceriesEntry() = GroceriesEntry(
        ingredient!!.toDto(),
        amount,
        unit,
        note,
        listOf(recipe!!.name)
    )
}

private fun IngredientEn.toDto() = IngredientWithCategory(id!!, name, category!!.name)
