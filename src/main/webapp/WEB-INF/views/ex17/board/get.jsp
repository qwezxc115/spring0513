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

<title>게시물</title>
</head>
<body>
	<div class="container">
		<c:url value="/ex17/board/list" var="homeLink" />
		<a class="btn btn-primary" href="${homeLink }">
			<i class="fa-solid fa-arrow-left-long"></i>
			처음으로
		</a>

		<h1>${board.id }번 게시물</h1>

		<div class="row">
			<form action="${appRoot }/ex17/board/modify" method="post">
				<input type="hidden" name="id" value="${board.id }" />

				<div class="form-group">
					<label for="input1">제목</label>
					<input type="text" value="${board.title }" name="title"
						class="form-control" name="title" />
				</div>

				<div class="form-group">

					<label for="textarea1">본문</label>
					<textarea id="textarea1" class="form-control" name="body" rows="5">${board.body }</textarea>

				</div>

				<div class="form-group">
					<label for="input2">작성일시</label>
					<input readonly="readonly" id="input2" class="form-control"
						type="datetime-local" value="${board.inserted }" />
				</div>
				<button type="submit" class="btn btn-success">수정</button>
			</form>
		</div>

		<c:url value="/ex17/board/remove" var="removeLink" />
		<form action="${removeLink }" method="post">
			<input type="hidden" name="id" value="${board.id }" />
			<button type="submit" class="btn btn-danger">삭제</button>
		</form>

		<hr />

		<h2>댓글</h2>

		<c:url value="/ex18/reply/add" var="replyAddLink" />
		<form action="${replyAddLink }" method="post">
			<input type="hidden" name="boardId" value="${board.id }" />
			댓글 :
			<input type="text" name="content" size="50" />

			<a class="btn btn-warning" href="${replyAddLink }">
				<i class="fa-solid fa-pen-to-square"></i>
				쓰기
			</a>
		</form>

		<hr />

		<div>
			<c:forEach items="${replyList }" var="reply">

				<div class="mb-3">
					<c:url value="/ex18/reply/modify" var="replyModifyLink" />
					<form action="${replyModifyLink }" method="post">
						<input type="hidden" value="${reply.id }" name="id" />
						<input type="hidden" name="boardId" value="${board.id }" />
						
						<div class="form-group">
							<label for="input2">댓글 내용: ${reply.inserted }</label>
							<input type="text" value="${reply.content }" name="content"
								id="input2" class="form-control" />
						</div>
						<button>수정</button>
					</form>

					<c:url value="/ex18/reply/remove" var="replyRemoveLink" />
					<form action="${replyRemoveLink }" method="post">
						<input type="hidden" name="id" value="${reply.id }" />
						<input type="hidden" name="boardId" value="${board.id }" />
						<button>삭제</button>
					</form>
				</div>

			</c:forEach>
		</div>
	</div>
</body>
</html>















