package com.example.groceries.ingredient

import com.example.groceries.ingredient.dtos.Category
import com.example.groceries.ingredient.dtos.Ingredient
import com.example.groceries.ingredient.dtos.NewIngredient
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/ingredient")
class IngredientsCo(val ingredientsSe: IngredientsSe) {
    @PostMapping
    fun saveIngredient(@RequestBody ingredient: NewIngredient): Ingredient {
        return ingredientsSe.save(ingredient)
    }

    @PostMapping("/matching-ingredients")
    fun findMatchingIngredients(@RequestBody query: String): List<Ingredient> {
        return ingredientsSe.searchByName(query)
    }

    @PostMapping("/matching-categories")
    fun findMatchingCategories(@RequestBody query: String): List<Category> {
        return ingredientsSe.searchIngredientCategories(query)
    }
}