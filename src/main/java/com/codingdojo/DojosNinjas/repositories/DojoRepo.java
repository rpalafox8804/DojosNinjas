package com.codingdojo.DojosNinjas.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.DojosNinjas.models.Dojo;

public interface DojoRepo extends CrudRepository <Dojo, Long> {
	List<Dojo> findAll();
}
