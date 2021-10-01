package com.example.groceries.jpa.utils

import org.springframework.data.jpa.domain.Specification
import javax.persistence.criteria.Fetch
import javax.persistence.criteria.From
import kotlin.reflect.KMutableProperty1
import kotlin.reflect.KProperty1

/**
 * @param T The type of the object that the property is declared on
 * @param R The property type
 * @see From
 */
fun <Z, T, R> From<Z, T>.fetch(prop: KProperty1<T, R?>): Fetch<T, R> = this.fetch(prop.name)

fun <T, R> fetch(prop: KMutableProperty1<T, R?>): Specification<T> {
    return Specification { root, _, _ ->
        root.fetch(prop)
        null
    }
}
