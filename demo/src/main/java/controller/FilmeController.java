package controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

import model.Filme;
import repository.FilmeRepository;

@RestController
@RequestMapping("/filmes")
public class FilmeController {

  @Autowired
  private FilmeRepository filmeRepository;

  @GetMapping
  public List<Filme> getAllFilmes() {
    return filmeRepository.findAll();
  }

  @GetMapping("/{id}")
  public Filme getFilmeById(@PathVariable Long id) {
    return filmeRepository.findById(id).orElse(null);
  }

  @PostMapping
  public Filme createFilme(@RequestBody Filme filme) {
    return filmeRepository.save(filme);
  }

  @PutMapping("/{id}")
  public Filme updateFilme(@PathVariable Long id, @RequestBody Filme filme) {
    // Busca o filme pelo ID
    Optional<Filme> filmeOptional = filmeRepository.findById(id);

    if (filmeOptional.isEmpty()) {
      // Filme não encontrado, lança exceção
      throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Filme não encontrado");
    }

    // Atualiza os dados do filme com os dados do corpo da requisição
    Filme filmeToUpdate = filmeOptional.get();
    filmeToUpdate.setTitulo(filme.getTitulo()); // Atualizar outros atributos se necessário
    filmeToUpdate.setDiretor(filme.getDiretor());
    filmeToUpdate.setGenero(filme.getGenero());
    filmeToUpdate.setAno(filme.getAno());

    // Salva o filme atualizado
    return filmeRepository.save(filmeToUpdate);
  }

  @DeleteMapping("/{id}")
  public void deleteFilme(@PathVariable Long id) {
    // Busca o filme pelo ID
    Optional<Filme> filmeOptional = filmeRepository.findById(id);

    if (filmeOptional.isEmpty()) {
      // Filme não encontrado, lança exceção (opcional)
      // throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Filme não encontrado");
    }

    // Deleta o filme
    filmeRepository.deleteById(id);
  }
}
