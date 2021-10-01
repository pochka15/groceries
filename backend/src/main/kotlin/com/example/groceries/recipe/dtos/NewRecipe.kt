package com.example.groceries.recipe.dtos

import com.example.groceries.recipe.RecipeEn
import com.example.groceries.recipe.entry.dtos.RecipeEntry

data class NewRecipe(
    val name: String,
    val entries: List<RecipeEntry>,
) {
    fun toRecipeEn(): RecipeEn {
        val recipeEn = RecipeEn(name = name)
        recipeEn.entries = entries.map { it.toRecipeEntryEn(recipeEn) }.toMutableList()
        return recipeEn
    }
}
