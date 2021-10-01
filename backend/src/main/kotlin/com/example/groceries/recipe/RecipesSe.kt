package com.example.groceries.recipe

import com.example.groceries.lucene.search
import com.example.groceries.recipe.dtos.NewRecipe
import com.example.groceries.recipe.dtos.Recipe
import org.hibernate.search.mapper.orm.Search
import org.springframework.stereotype.Service
import javax.persistence.EntityManager
import javax.persistence.PersistenceContext

@Service
class RecipesSe(
    val recipesRe: RecipesRe,
    @PersistenceContext val entityManager: EntityManager
) {
    fun save(recipe: NewRecipe): Recipe {
        val recipeEn = recipesRe.save(recipe.toRecipeEn())
        return recipeEn.run { Recipe(id!!, name) }
    }

    fun searchByName(name: String): List<Recipe> =
        search(Search.session(entityManager), RecipeEn::name, name)
            .map { Recipe(it.id!!, it.name) }
}

