package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.Filme;
import repository.FilmeRepository;

@Service
public class FilmeService {

    @Autowired
    private FilmeRepository filmeRepository;

    public List<Filme> getAllFilmes() {
        return filmeRepository.findAll();
    }

    public Filme getFilmeById(Long id) {
        return filmeRepository.findById(id).orElse(null);
    }

    public Filme createFilme(Filme filme) {
        return filmeRepository.save(filme);
    }

    public Filme updateFilme(Filme filme) {
        return filmeRepository.save(filme);
    }

    public void deleteFilme(Long id) {
        filmeRepository.deleteById(id);
    }

   
}

