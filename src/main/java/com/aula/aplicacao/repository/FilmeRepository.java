package com.aula.aplicacao.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.aula.aplicacao.model.Filmes;

@Repository
public interface FilmeRepository  extends CrudRepository<Filmes, Long> {

}
