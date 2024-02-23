<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
  <head>
    <title>List Todos Page</title>
    <link rel="stylesheet" href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"/>
  </head>
  <body>
    <div class="container">
    
    <div>Your Todos are</div>
    <table class="table">
    <thead>
    <tr>
      <th>Description</th>
      <th>Target Date</th>
      <th>Is Done?</th>
    </tr>
    </thead>
    <tbody>
  	<c:forEach items="${todos}" var="todo">
  	  <tr>
  	    <td>${todo.description}</td>
  	    <td>${todo.targetDate}</td>
  	    <td>${todo.done}</td>
  	    <td><a href="delete-todo?id=${todo.id}" class="btn btn-warning"/>Delete</td>
  	    <td><a href="update-todo?id=${todo.id}" class="btn btn-success"/>Update</td>
  	  </tr>
  	</c:forEach>
  	</tbody>
  	</table>
  	<a href="add-todo" class="btn btn-success">Add Todo</a>
  	</div>
  	<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
  	<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
  </body>
</html>