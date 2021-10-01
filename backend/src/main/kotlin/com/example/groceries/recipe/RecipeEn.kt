package com.example.groceries.recipe

import com.example.groceries.recipe.entry.RecipeEntryEn
import org.hibernate.search.mapper.pojo.mapping.definition.annotation.FullTextField
import org.hibernate.search.mapper.pojo.mapping.definition.annotation.Indexed
import javax.persistence.*

@Entity
@Table(name = "recipes")
@Indexed
class RecipeEn(
    @Id @GeneratedValue(strategy = GenerationType.AUTO)
    var id: Long? = null,

    @Column(unique = true) @FullTextField
    var name: String = "",

    @OneToMany(
        mappedBy = "recipe",
        fetch = FetchType.LAZY,
        cascade = [CascadeType.ALL]
    )
    var entries: MutableList<RecipeEntryEn> = mutableListOf()
) {
    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (javaClass != other?.javaClass) return false

        other as RecipeEn

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