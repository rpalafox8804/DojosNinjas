package com.codingdojo.DojosNinjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.DojosNinjas.models.Ninja;
import com.codingdojo.DojosNinjas.repositories.NinjaRepo;

@Service
public class NinjaService {
	@Autowired
	NinjaRepo ninjaRepo;
	
	//list all ninjas
	public List<Ninja> allNinjas(){
		return ninjaRepo.findAll();
	}
	
	//create Ninja and update
    public Ninja createUpdateNinja(Ninja newNinja) {
        return ninjaRepo.save(newNinja);
    }
    
    //find Ninja
    public Ninja findNinja(Long id) {
        Optional<Ninja> optionalNinja = ninjaRepo.findById(id);
        if(optionalNinja.isPresent()) {
            return optionalNinja.get();
        } else {
            return null;
        }
    }
    //delete Ninja
    public void deleteNinja(Long id) {
    	ninjaRepo.deleteById(id);
    }


}
