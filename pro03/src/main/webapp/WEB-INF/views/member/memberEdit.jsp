<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원 정보 수정</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
<!-- 헤더 부분 인클루드 -->
<jsp:include page="../include/hd.jsp"></jsp:include>

<div class="content" id="content">
    <div class="row column text-center">
        <h2 style=" text-align: center">회원 정보 수정</h2>
        <hr>
        <div class="container">
            <form action="${path1 }/member/edit.do" method="post">
                <table>
                <tr>
                    <th>ID</th>
                    <td><input type="text" name="id" id="id" value="${member.id }" readonly></td>
                </tr>
                <tr>
                    <th>pw</th>
                    <td><input type="password" name="pw" id="pw" value="${member.pw }" ></td>
                </tr>
                <tr>
                    <th>name</th>
                    <td><input type="text" name="name" id="name" value="${member.name }" readonly></td>
                </tr>
                <tr>
                    <th>email</th>
                    <td><input type="email" name="email" id="email" value="${member.email }"></td>
                </tr>
                <tr>
                    <th>tel</th>
                    <td><input type="tel" name="tel" id="tel" value="${member.tel }"></td>
                </tr>
                <tr>
                    <th>addr</th>
                    <td><input type="text" name="postcode" id="postcode" value="${member.postcode }">
                        <br><input type="text" name="addr1" id="addr1" value="${member.addr1 }">
                        <br><input type="text" name="addr2" id="addr2" value="${member.addr2 }"></td>
                </tr>
                <tr>
                    <th>birth</th>
                    <td><input type="date" name="birth" id="birth" value="${member.birth }"></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" class="submit success button" value="정보 수정" >
                        <a class="button" href="${path1 }/member/list.do">회원 목록</a>
                    </td>
                </tr>

            </table>

        </div>

    </div>
</div>

<!-- 푸터 부분 인클루드 -->
<jsp:include page="../include/ft.jsp"></jsp:include>

</body>
</html>