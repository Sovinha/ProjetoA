package repository;

import org.springframework.data.jpa.repository.JpaRepository;

import model.Filme;

public interface FilmeRepository extends JpaRepository<Filme, Long> {
}
