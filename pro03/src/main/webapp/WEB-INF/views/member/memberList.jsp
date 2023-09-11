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
    <title>회원 목록</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
<!-- 헤더 부분 인클루드 -->
<jsp:include page="../include/hd.jsp"></jsp:include>

<div class="content" id="content">
    <div class="row column text-center">
        <h2 style=" text-align: center">회원 목록</h2>
        <hr>
        <div class="container">
            <table>
                <thead>
                <tr>
                    <th >No</th>
                    <th>ID</th>
                    <th >name</th>
                    <th >regdate</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${memberList }" var="member" varStatus="status">
                    <tr>
                        <td>${status.count }</td>
                        <td><a href="${path1}/member/detail.do?id=${member.id }" title="${member.email}">${member.id }</a></td>
                        <td><a href="${path1}/member/detail.do?id=${member.id }" title="${member.tel}">${member.name }</a></td>
                        <td>
                            <fmt:parseDate value="${member.regdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss" />
                            <fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd" />
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <%-- <c:if test='${sid eq "admin"}'>  --%>
            <div class="button-group">
                <a class="button" href="${path1 }/member/insert.do">회원 추가</a>
            </div>
            <%-- </c:if> --%>
        </div>

    </div>
</div>

<!-- 푸터 부분 인클루드 -->
<jsp:include page="../include/ft.jsp"></jsp:include>

</body>
</html>