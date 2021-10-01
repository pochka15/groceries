package com.example.groceries.recipe

import com.example.groceries.recipe.dtos.NewRecipe
import com.example.groceries.recipe.dtos.Recipe
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/recipe")
class RecipesCo(val recipesSe: RecipesSe) {
    @PostMapping
    fun saveRecipe(@RequestBody recipe: NewRecipe): Recipe {
        return recipesSe.save(recipe)
    }

    @PostMapping("/matching")
    fun findMatchingRecipes(@RequestBody query: String): List<Recipe> {
        return recipesSe.searchByName(query)
    }
}