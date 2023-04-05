package com.codingdojo.DojosNinjas.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.DojosNinjas.models.Ninja;

public interface NinjaRepo extends CrudRepository <Ninja, Long> {
	List<Ninja> findAll();
}
