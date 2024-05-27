<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Atualização de Filmes</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #141414;
            color: #fff;
        }
        .navbar-brand {
            color: #e50914;
            font-weight: bold;
        }
        .navbar-toggler {
            border-color: #e50914;
        }
        .navbar-toggler-icon {
            background-color: #e50914;
        }
        .nav-link {
            color: #fff;
            font-weight: bold;
        }
        .form-control {
            background-color: #1f1f1f;
            border-color: #1f1f1f;
            color: #fff;
        }
        .form-control:focus {
            background-color: #1f1f1f;
            border-color: #e50914;
            color: #fff;
        }
        .btn-primary {
            background-color: #e50914;
            border-color: #e50914;
            font-weight: bold;
        }
        .btn-primary:hover {
            background-color: #e50914;
            border-color: #e50914;
        }
        .btn-primary:focus {
            background-color: #e50914;
            border-color: #e50914;
            box-shadow: 0 0 0 0.25rem rgba(229, 9, 20, 0.5);
        }
        legend {
            color: #e50914;
            font-weight: bold;
        }
        .form-label {
            color: #e50914;
            font-weight: bold;
        }
        span {
            font-size: 0.875rem;
        }
         @keyframes brilho {
    0% { text-shadow: 0 0 5px #fff, 0 0 10px #ff0000, 0 0 20px #ff0000, 0 0 30px #ff0000, 0 0 40px #ff0000, 0 0 50px #ff0000, 0 0 60px #ff0000; }
    50% { text-shadow: none; }
    100% { text-shadow: 0 0 5px #fff, 0 0 10px #ff0000, 0 0 20px #ff0000, 0 0 30px #ff0000, 0 0 40px #ff0000, 0 0 50px #ff0000, 0 0 60px #ff0000; }
}

}

        @keyframes brilho {
    0% { color: #e50914; }
    50% { color: #ffffff; }
    100% { color: #e50914; }
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="/filmes">
    <span style="animation: brilho 2s infinite; color: #e50914; font-size: 24px;">N</span>
    <span style="animation: brilho 2s infinite 0.2s; color: #ffdb00; font-size: 24px;">E</span>
    <span style="animation: brilho 2s infinite 0.4s; color: #ffcc00; font-size: 24px;">T</span>
    <span style="animation: brilho 2s infinite 0.6s; color: #221f1f; font-size: 24px;">F</span>
    <span style="animation: brilho 2s infinite 0.8s; color: #221f1f; font-size: 24px;">L</span>
    <span style="animation: brilho 2s infinite 1s; color: #e50914; font-size: 24px;">I</span>
    <span style="animation: brilho 2s infinite 1.2s; color: #ffdb00; font-size: 24px;">X</span>
</a>


            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="/filmes">Cadastrar</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="/filmes/listar">Listar</a>
                </li>
              </ul>
            </div>
         </div>
    </nav>
    
    <div class="container mt-3">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <form:form method="post" modelAttribute="filme" action="/filmes/atualizar">
                    <fieldset>
                        <legend>Atualização de Filme</legend>
                        <div class="mb-3">
                            <label for="titulo" class="form-label">Título:</label>
                            <input class="form-control" type="text" id="titulo" name="titulo" placeholder="Título" value="${filme.titulo}"/>
                        </div>
                        <div class="mb-3">
                            <label for="imagem" class="form-label">Imagem:</label>
                            <input class="form-control" type="text" id="imagem" name="imagem" placeholder="URL da Imagem" value="${filme.imagem}"/>
                        </div>
                        <div class="mb-3">
                            <label class="form-label" for="genero">Gênero:</label>
                            <input class="form-control" type="text" id="genero" name="genero" placeholder="Gênero" value="${filme.genero}"/>
                        </div>
                        <div class="mb-3">
                            <label for="fxetaria" class="form-label">Classificação Etária:</label>
                            <input class="form-control" type="text" id="fxetaria" name="fxetaria" placeholder="Classificação Etária" value="${filme.fxetaria}"/>
                        </div>
                        <div class="mb-3">
                            <label for="duracao" class="form-label">Duração:</label>
                            <input class="form-control" type="text" id="duracao" name="duracao" placeholder="Duração" value="${filme.duracao}"/>
                        </div>
                        <div class="mb-3">
                            <label for="descricao" class="form-label">Descrição:</label>
                            <textarea class="form-control" rows="3" id="descricao" name="descricao" placeholder="Descrição">${filme.descricao}</textarea>
                        </div>
                        <div class="mb-3">
                            <label for="pontos" class="form-label">Pontos:</label>
                            <input class="form-control" type="number" min="1" id="pontos" name="pontos" placeholder="Pontos" value="${filme.pontos}"/>
                        </div>
                        <div class="mb-3">
                            <label for="ano" class="form-label">Ano:</label>
                            <input class="form-control" type="number" min="1" id="ano" name="ano" placeholder="Ano" value="${filme.ano}"/>
                        </div>
                        <input type="hidden" id="id" name="id" value="${filme.id}"/> <!-- Campo oculto para passar o ID do filme -->
                        <button type="submit" class="btn btn-primary">Atualizar</button>
                        <button type="button" class="btn btn-secondary me-2" onclick="window.history.back();">Voltar</button>
                    </fieldset>
                </form:form>
            </div>
        </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
