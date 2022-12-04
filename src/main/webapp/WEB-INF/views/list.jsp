<%--
  Created by IntelliJ IDEA.
  User: yun-eunseo
  Date: 2022/12/03
  Time: 4:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%--<%@ taglib prefix="c" pri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<img src="img/tree.jpg" width="300" />
<h1>${title}</h1>
<%--<c:forEach var="name" items="${classlist}" varStatus="status">
    <p>${status.count} : ${name}</p>
</c:forEach>--%>
<c:forEach items="${list}" var="u">
    <tr>
    <td>${u.seq}</td>
    <td>${u.category}</td>
    <td>${u.title}</td>
    <td>${u.writer}</td>
    <td>${u.content}</td>
    <td>${u.regdate}</td
    <td><a href="editform/${u.seq}">글수정</a></td>
    <td><a href="javascript:delete_ok('${u.seq}')">글삭제</a></td>
    </tr>
</c:forEach>
<script>
    function delete_ok(id) {
        var a = confirm("정말로 삭제하겠습니까? ");
        if(a) location.href='deleteok/' +id;
    }
</script>
</body>
</html>
