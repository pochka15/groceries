package com.example.groceries.ingredient.dtos

import com.example.groceries.ingredient.CategoryEn
import com.example.groceries.ingredient.IngredientEn

data class NewIngredient(
    val name: String,
    val categoryId: Long,
) {
    fun toIngredientEn(): IngredientEn {
        return IngredientEn(
            name = name,
            category = CategoryEn(id = categoryId)
        )
    }
}