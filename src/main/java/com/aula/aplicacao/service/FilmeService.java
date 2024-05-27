package com.aula.aplicacao.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aula.aplicacao.model.Filmes;
import com.aula.aplicacao.repository.FilmeRepository;


@Service
public class FilmeService {
	
	@Autowired
	private FilmeRepository filmeRepository;
	
	public List<Filmes> findAll(){
		return (List<Filmes>) filmeRepository.findAll();
	}
	
	public void save(Filmes filmes) {
        filmeRepository.save(filmes);
        System.out.println("Filme salvo com sucesso: " + filmes.getTitulo()); // Mensagem de confirmação de save
    }

	
	public void deletar(long id) {
		filmeRepository.deleteById(id);
	}
	
	public Filmes findById(long id) {
		return filmeRepository.findById(id).get();
	}
	
	public void update(Filmes filme) {
		Filmes filmeExistente = findById(filme.getId());
		filmeExistente.setTitulo(filme.getTitulo());
		filmeExistente.setImagem(filme.getImagem());
		filmeExistente.setGenero(filme.getGenero());
		filmeExistente.setFxetaria(filme.getFxetaria());
		filmeExistente.setDuracao(filme.getDuracao());
		filmeExistente.setDescricao(filme.getDescricao());
		filmeExistente.setPontos(filme.getPontos());
		filmeExistente.setAno(filme.getAno());
		save(filmeExistente);
	}
	

}
