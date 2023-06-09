package com.codingdojo.DojosNinjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.DojosNinjas.models.Dojo;
import com.codingdojo.DojosNinjas.repositories.DojoRepo;

@Service	
public class DojoService {
	@Autowired
	DojoRepo dojoRepo;
	
	//list all dojos
	public List<Dojo> allDojos(){
		return dojoRepo.findAll();
	}
	
	//create Dojo
    public Dojo createUpdateDojo(Dojo newDojo) {
        return dojoRepo.save(newDojo);
    }
    
    //find Dojo
    public Dojo findDojo(Long id) {
        Optional<Dojo> optionalDojo = dojoRepo.findById(id);
        if(optionalDojo.isPresent()) {
            return optionalDojo.get();
        } else {
            return null;
        }
    }
    //delete dojo
    public void deleteDojo(Long id) {
	    	dojoRepo.deleteById(id);
    }

}
