package com.example.groceries.recipe.entry

import com.example.groceries.ingredient.IngredientEn
import com.example.groceries.recipe.RecipeEn
import javax.persistence.*

@Entity
@Table(name = "recipe_entries")
class RecipeEntryEn(
    @Id @GeneratedValue(strategy = GenerationType.AUTO)
    var id: Long? = null,

    var note: String = "",

    var amount: Int,

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "recipe_id", referencedColumnName = "id", nullable = false)
    var recipe: RecipeEn? = null,

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ingredient_id", referencedColumnName = "id", nullable = false)
    var ingredient: IngredientEn? = null,

    @Column(length = 6)
    var unit: String = ""
) {
    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (javaClass != other?.javaClass) return false

        other as RecipeEntryEn

        if (id != other.id) return false
        if (note != other.note) return false
        if (amount != other.amount) return false
        if (unit != other.unit) return false

        return true
    }

    override fun hashCode(): Int {
        var result = id?.hashCode() ?: 0
        result = 31 * result + note.hashCode()
        result = 31 * result + amount
        result = 31 * result + unit.hashCode()
        return result
    }
}