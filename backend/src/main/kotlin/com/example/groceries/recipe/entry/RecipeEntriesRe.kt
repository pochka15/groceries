package com.example.groceries.recipe.entry

import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.JpaSpecificationExecutor

interface RecipeEntriesRe : JpaRepository<RecipeEntryEn, Long>, JpaSpecificationExecutor<RecipeEntryEn>