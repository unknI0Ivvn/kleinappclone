package com.example.clonekleinanziegein.repositories;

import com.example.clonekleinanziegein.models.Image;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ImageRepository extends JpaRepository<Image, Long> {
}