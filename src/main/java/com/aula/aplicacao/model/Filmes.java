package com.aula.aplicacao.model;

import org.hibernate.validator.constraints.Range;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

@Entity
@Table(name = "tb_filmes")
public class Filmes {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@NotBlank(message = "O nome do filme é obrigatório.")
	@Column(length = 80)
	private String titulo;
	
	@Column(length = 500)
	private String imagem;
	@Column(length = 145)
	@NotNull(message = "Informe um genero!")
	private String genero;
	@Column(length = 145)
	@Range(min = 10, max = 18, message = "De 10 a 18 anos !")
	private String fxetaria;
	@Column(length = 40)
	private Integer duracao;
	@Column(length = 500)
	@NotNull(message = "Informe uma descrição.")
	private String descricao;
	@NotNull(message = "Informe uma nota válida.")
    @Range(min = 1, max = 10, message = "Notas devem estar entre 1 e 10.")
    private Integer pontos;
	@NotNull(message = "Informe um ano valido.")
	@Range(min = 1500, max = 2025, message = "Digite um ano valido !")
	private Integer ano;

	public Filmes() {
		super();
	}

	public Filmes(String titulo, String imagem, String genero, String fxetaria, Integer duracao, String descricao, Integer pontos, Integer ano) {
		super();
		this.titulo = titulo;
		this.imagem = imagem;
		this.genero = genero;
		this.fxetaria = fxetaria;
		this.duracao = duracao;
		this.descricao = descricao;
		this.pontos = pontos;
		this.ano = ano;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getImagem() {
		return imagem;
	}

	public void setImagem(String imagem) {
		this.imagem = imagem;
	}

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}

	public String getFxetaria() {
		return fxetaria;
	}

	public void setFxetaria(String fxetaria) {
		this.fxetaria = fxetaria;
	}

	public Integer getDuracao() {
		return duracao;
	}

	public void setDuracao(Integer duracao) {
		this.duracao = duracao;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public Integer getPontos() {
		return pontos;
	}

	public void setPontos(Integer pontos) {
		this.pontos = pontos;
	}

	public Integer getAno() {
		return ano;
	}

	public void setAno(Integer ano) {
		this.ano = ano;
	}


	@Override
public String toString() {
    return "Filmes [titulo=" + titulo + ", imagem=" + imagem + ", genero=" + genero + ", fxetaria=" + fxetaria + ", duracao=" + duracao + ", pontos=" + pontos + ", descricao=" + descricao + ", ano=" + ano + "]";
}

}
