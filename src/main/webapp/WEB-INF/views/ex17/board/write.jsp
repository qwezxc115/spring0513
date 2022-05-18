<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css"
	integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
	referrerpolicy="no-referrer"></script>

<title>글 작성</title>
</head>
<body>
	<div class="container">

		<c:url value="/ex17/board/list" var="homeLink" />

		<a class="btn btn-primary" href="${homeLink }">
			<i class="fa-solid fa-arrow-left-long"></i>
			뒤로가기
		</a>

		<h1>글 작성</h1>

		<c:url value="/ex17/board/write" var="writeLink" />

		<div class="row mb-3">
			<form action="${writeLink }" method="post">

				<div class="form-group mb-3">
					<label for="input1">제목</label>
					<input type="text" name="title" class="form-control" />
				</div>

				<div class="form-group mb-3">

					<label for="textarea1">본문</label>
					<textarea id="textarea1" class="form-control" name="body" rows="5"></textarea>

				</div>

				<button type="submit" class="btn btn-outline-info">등록</button>
			</form>
		</div>
</body>
</html>









