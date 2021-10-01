package com.example.groceries.ingredient

import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.JpaSpecificationExecutor

interface IngredientsRe : JpaRepository<IngredientEn, Long>, JpaSpecificationExecutor<IngredientEn>