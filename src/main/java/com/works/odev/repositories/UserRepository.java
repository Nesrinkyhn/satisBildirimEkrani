package com.works.odev.repositories;


import com.works.odev.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.http.converter.json.GsonBuilderUtils;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User,Integer> {
   Optional<User> findByEmailAndPassword(String Email, String Password);


}
