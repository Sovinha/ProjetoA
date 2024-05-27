<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Listar Filmes</title>
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
        .table {
            background-color: #1f1f1f;
            color: #fff;
        }
        .table th {
            border-color: #e50914;
            color: #e50914;
        }
        .table td, .table th {
            border-color: #1f1f1f;
        }
        .btn-danger, .btn-warning {
            color: #fff;
            font-weight: bold;
        }
        .btn-danger {
            background-color: #e50914;
            border-color: #e50914;
        }
        .btn-danger:hover {
            background-color: #ff0000;
            border-color: #ff0000;
        }
        .btn-warning {
            background-color: #f5c518;
            border-color: #f5c518;
        }
        .btn-warning:hover {
            background-color: #ffd700;
            border-color: #ffd700;
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
        <div class="col-md-10">
            <div class="table-responsive">
                <table class="table table-dark table-hover">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Título</th>
                            <th scope="col">Imagem</th>
                            <th scope="col">Gênero</th>
                            <th scope="col">Classificação Etária</th>
                            <th scope="col">Duração</th>
                            <th scope="col">Descrição</th>
                            <th scope="col">Pontos</th>
                            <th scope="col">Ano</th>
                            <th scope="col">Ações</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${filmes}" var="filme" varStatus="status">
                            <tr>
                                <td>${filme.id}</td>
                                <td>${filme.titulo}</td>
                                <td>
                                    <img src="${filme.imagem}" alt="${filme.titulo}" class="img-thumbnail" style="max-width: 100px;">
                                </td>
                                <td>${filme.genero}</td>
                                <td>${filme.fxetaria}</td>
                                <td>${filme.duracao}</td>
                                <td>${filme.descricao}</td>
                                <td>${filme.pontos}</td>
                                <td>${filme.ano}</td>
                                <td>
                                    <div class="btn-group" role="group">
                                        <a class="btn btn-danger" href="/filmes/deletar/${filme.id}">Deletar</a>
                                        <a class="btn btn-warning" href="/filmes/atualizar/${filme.id}">Editar</a>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<footer class="text-center py-4">
    <p style="color: #ffffff;">© 2024 Netflix. Todos os direitos reservados.</p>
</footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
