package com.example.groceries.ingredient

import com.example.groceries.ingredient.dtos.Category
import com.example.groceries.ingredient.dtos.Ingredient
import com.example.groceries.ingredient.dtos.NewIngredient
import com.example.groceries.lucene.search
import org.hibernate.search.mapper.orm.Search
import org.springframework.stereotype.Service
import javax.persistence.EntityManager
import javax.persistence.PersistenceContext


@Service
class IngredientsSe(
    val ingredientsRe: IngredientsRe,
    @PersistenceContext val entityManager: EntityManager
) {
    fun save(ingredient: NewIngredient): Ingredient {
        val ingredientEn = ingredientsRe.save(ingredient.toIngredientEn())
        return ingredientEn.run { Ingredient(id!!, name) }
    }

    fun searchByName(name: String): List<Ingredient> =
        search(Search.session(entityManager), IngredientEn::name, name)
            .map { Ingredient(it.id!!, it.name) }

    fun searchIngredientCategories(query: String): List<Category> =
        search(Search.session(entityManager), CategoryEn::name, query)
            .map { Category(it.id!!, it.name) }
}