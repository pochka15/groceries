package com.example.groceries.recipe.entry

import au.com.console.jpaspecificationdsl.get
import au.com.console.jpaspecificationdsl.join
import com.example.groceries.recipe.RecipeEn
import org.springframework.data.jpa.domain.Specification

fun whereRecipeIdIsInGivenIds(recipeIds: List<Long>): Specification<RecipeEntryEn> =
    Specification { recipeEntryEnRoot, _, _ ->
        recipeEntryEnRoot.join(RecipeEntryEn::recipe)
            .get(RecipeEn::id)
            .`in`(recipeIds)
    }
