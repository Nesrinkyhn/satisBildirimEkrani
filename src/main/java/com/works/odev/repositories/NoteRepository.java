package com.works.odev.repositories;

import com.works.odev.entities.Note;
import org.springframework.data.jpa.repository.JpaRepository;

public interface NoteRepository extends JpaRepository <Note, Integer> {
}
