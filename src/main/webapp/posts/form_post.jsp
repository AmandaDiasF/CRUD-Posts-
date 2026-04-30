<jsp:directive.page contentType="text/html; charset=UTF-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-icons.css">
<title>Cadastro de Post</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-6">
<form action="${pageContext.request.contextPath}/posts/save" method="GET">
    <h1>${post eq null ? "Cadastro de " : "Atualização de "}Post</h1>

    <div class="mb-3">
    <a href="${pageContext.request.contextPath}/posts">
        <i class="bi bi-card-text"></i> Posts
    </a>
</div>
    <input type="hidden" name="post_id" value="${post.getId()}" />

    <div class="mb-3">
        <label for="post_content_id" class="form-label">Conteúdo do Post:</label>
        <textarea class="form-control"
                  id="post_content_id"
                  name="post_content"
                  placeholder="Digite o conteúdo do post">${post.getContent()}</textarea>
    </div>

    <div class="mb-3">
        <label for="post_user_id" class="form-label">Usuário do Post:</label>
        <select class="form-select" id="post_user_id" name="post_user_id">
            <option value="">-- Selecione um usuário --</option>
            <c:forEach var="usuario" items="${usuarios}">
                <option value="${usuario.getId()}"
                    ${post ne null && post.getUser() ne null && post.getUser().getId() == usuario.getId() ? "selected" : ""}>
                    ${usuario.getName()}
                </option>
            </c:forEach>
        </select>
    </div>

    <button type="submit" class="btn btn-primary">
        ${post eq null ? "Cadastrar" : "Atualizar"}
    </button>
</form>
			</div>
			<div class="col-md-1"></div>
		</div>
	</div>
</body>
</html>