package com.imjooshin.ideas.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.imjooshin.ideas.models.Idea;

public interface IdeaRepository extends CrudRepository<Idea,Long> {
	List<Idea> findAll();
	Optional<Idea> findIdeaById(Long id);
}
