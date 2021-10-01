package com.example.groceries.list.dtos

import com.example.groceries.ingredient.dtos.IngredientWithCategory

data class GroceriesEntry(
    val ingredient: IngredientWithCategory,
    val amount: Int,
    val unit: String,
    val note: String,
    val originalRecipes: List<String>
)