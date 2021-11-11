package de.rockyj.controllers

import io.smallrye.mutiny.Uni

import javax.enterprise.context.ApplicationScoped
import javax.inject.Inject
import javax.ws.rs.GET
import javax.ws.rs.Path

import de.rockyj.models.User
import de.rockyj.repositories.UserRepository

@Path("/users")
@ApplicationScoped
class UsersController(@Inject private val userRepository: UserRepository) {

    @GET
    fun get(): Uni<List<User>>? {
        return userRepository.listAll()
    }

}
