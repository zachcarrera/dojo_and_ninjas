package com.zachcarrera.dojoandninjas.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zachcarrera.dojoandninjas.models.Ninja;
import com.zachcarrera.dojoandninjas.repositories.NinjaRepository;

@Service
public class NinjaService {
	
	@Autowired
	private NinjaRepository ninjaRepository;

	
	// ----- CREATE -----
	public Ninja createNinja(Ninja newNinja) {
		return ninjaRepository.save(newNinja);
	}
}
