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
    <title>Mypage</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
<!-- 헤더 부분 인클루드 -->
<jsp:include page="../include/hd.jsp"></jsp:include>

<div class="content" id="content">
    <div class="row column text-center">
        <h2 style=" text-align: center">내 정보</h2>
        <hr>
        <div class="container">
            <table>

                <tr>
                    <th>ID</th>
                    <td>${member.id }</td>
                </tr>
                    <tr>
                        <th>pw</th>
                        <td>${member.pw }</td>
                    </tr>
                    <tr>
                        <th>name</th>
                        <td>${member.name }</td>
                    </tr>
                    <tr>
                        <th>email</th>
                        <td>${member.email }</td>
                    </tr>
                    <tr>
                        <th>tel</th>
                        <td>${member.tel }</td>
                    </tr>
                    <tr>
                        <th>addr</th>
                        <td>${member.addr1 }<br>${member.addr2 }<br>${member.postcode }</td>
                    </tr>
                    <tr>
                        <th>birth</th>
                        <fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd" />
                    </tr>
                    <tr>
                        <th>regdate</th>
                        <fmt:parseDate value="${member.regdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss" />

                    </tr>


            </table>
            <%-- <c:if test='${sid eq "admin"}'>  --%>
            <div class="button-group">
                <a class="button" href="${path1 }/member/edit.do">정보 수정</a>
            </div>
            <%-- </c:if> --%>
        </div>

    </div>
</div>

<!-- 푸터 부분 인클루드 -->
<jsp:include page="../include/ft.jsp"></jsp:include>

</body>
</html>