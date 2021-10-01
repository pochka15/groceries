package com.example.groceries.lucene

import org.hibernate.search.mapper.orm.Search
import org.springframework.beans.factory.annotation.Value
import org.springframework.boot.context.event.ApplicationReadyEvent
import org.springframework.context.ApplicationListener
import org.springframework.stereotype.Component
import javax.persistence.EntityManagerFactory

/**
 * Component which runs the mass indexation for the current search session on startup.
 */
@Component
class StartupMassIndexationConfig(
    val entityManagerFactory: EntityManagerFactory,
    @Value("\${enableStartupMassIndexation}") val enableIndexation: Boolean
) : ApplicationListener<ApplicationReadyEvent> {
    override fun onApplicationEvent(event: ApplicationReadyEvent) {
        if (enableIndexation) {
            val entityManager = entityManagerFactory.createEntityManager()
            val searchSession = Search.session(entityManager)
            searchSession.massIndexer()
                .start()
                .exceptionally {
                    System.err.println("Mass indexing failed!")
                    null
                }
        }
    }
}