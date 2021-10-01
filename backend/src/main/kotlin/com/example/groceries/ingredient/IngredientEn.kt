package com.example.groceries.ingredient

import com.example.groceries.recipe.entry.RecipeEntryEn
import org.hibernate.search.mapper.pojo.mapping.definition.annotation.FullTextField
import org.hibernate.search.mapper.pojo.mapping.definition.annotation.Indexed
import javax.persistence.*

@Entity
@Table(name = "ingredients")
@Indexed
class IngredientEn(
    @Id @GeneratedValue(strategy = GenerationType.AUTO)
    var id: Long? = null,

    @Column(unique = true) @FullTextField
    var name: String = "",

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "categoryEn", referencedColumnName = "id", nullable = false)
    var category: CategoryEn? = null,

    @OneToMany(mappedBy = "ingredient", fetch = FetchType.LAZY)
    var recipeEntry: MutableList<RecipeEntryEn> = mutableListOf()
) {
    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (javaClass != other?.javaClass) return false

        other as IngredientEn

        if (id != other.id) return false
        if (name != other.name) return false

        return true
    }

    override fun hashCode(): Int {
        var result = id?.hashCode() ?: 0
        result = 31 * result + name.hashCode()
        return result
    }
}