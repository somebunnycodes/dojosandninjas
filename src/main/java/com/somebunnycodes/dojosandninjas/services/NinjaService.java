package com.somebunnycodes.dojosandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.somebunnycodes.dojosandninjas.models.Dojo;
import com.somebunnycodes.dojosandninjas.models.Ninja;
import com.somebunnycodes.dojosandninjas.repositories.NinjaRepository;

@Service
public class NinjaService {
	private final NinjaRepository repo;
	
	public NinjaService(NinjaRepository repo) {
		this.repo = repo;
	}
	
	public Ninja create(Ninja ninja) {
		return repo.save(ninja);
	}
	
	public List<Ninja> all() {
		return repo.findAll();
	}

	public Ninja find(Long id) {
		Optional<Ninja> result = repo.findById(id);
		if(result.isPresent()) {
			return result.get();
		} else {
			return null;
		}
	}
	
	public List<Ninja> byDojo(Dojo dojo) {
		return repo.findAllByDojo(dojo);
	}
}
