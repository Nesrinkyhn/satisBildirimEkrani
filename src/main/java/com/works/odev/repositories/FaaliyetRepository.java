package com.works.odev.repositories;

import com.works.odev.entities.FaaliyetAlani;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FaaliyetRepository extends JpaRepository<FaaliyetAlani, Integer> {
}
