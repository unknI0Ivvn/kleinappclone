package com.example.clonekleinanziegein.repositories;

import com.example.clonekleinanziegein.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
}