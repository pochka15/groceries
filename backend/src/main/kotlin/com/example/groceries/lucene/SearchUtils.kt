package com.example.groceries.lucene

import org.hibernate.search.mapper.orm.session.SearchSession
import kotlin.reflect.KProperty1

inline fun <reified T, V> search(
    searchSession: SearchSession,
    prop: KProperty1<T, V?>,
    query: String,
    amount: Int = 10
): List<T> {
    return searchSession.search(T::class.java)
        .where { factory ->
            factory.match()
                .field(prop.name)
                .matching(query)
                .fuzzy()
        }
        .fetch(amount)
        .hits()
        .map { it as T }
}
