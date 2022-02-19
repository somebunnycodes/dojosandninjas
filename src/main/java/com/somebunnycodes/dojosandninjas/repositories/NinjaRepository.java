package com.somebunnycodes.dojosandninjas.repositories;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import com.somebunnycodes.dojosandninjas.models.Dojo;
import com.somebunnycodes.dojosandninjas.models.Ninja;

public interface NinjaRepository extends CrudRepository<Ninja, Long> {

	List<Ninja> findAll();
	List<Ninja> findAllByDojo(Dojo dojo);
}
