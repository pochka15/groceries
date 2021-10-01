package com.example.groceries.recipe.entry.dtos

import com.example.groceries.ingredient.IngredientEn
import com.example.groceries.recipe.RecipeEn
import com.example.groceries.recipe.entry.RecipeEntryEn

data class RecipeEntry(
    val amount: Int,
    val unit: String,
    val note: String,
    val ingredientId: Long,
) {
    fun toRecipeEntryEn(parentRecipe: RecipeEn): RecipeEntryEn {
        return RecipeEntryEn(
            note = note,
            amount = amount,
            unit = unit,
            ingredient = IngredientEn(ingredientId),
            recipe = parentRecipe
        )
    }
}
