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
    <title>로그인</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
<!-- 헤더 부분 인클루드 -->
<jsp:include page="../include/hd.jsp"></jsp:include>

<div class="content" id="content">
    <div class="row column text-center">
        <h2 class="h1" style="text-align: center">로그인</h2>
        <hr>
        <div class="container">
            <c:if test="${!empty msg }">
                <script>
                    alert("로그인 실패");
                    document.loginForm.userid.focus();
                </script>
            </c:if>
            <form action="${path1 }/member/signin.do" method="post" name="loginForm">
                <div class="table_form_wrap" style="min-height: 70vh">
                    <section style="height: 60px">
                    </section>
                    <table class="table_form" style="width: 400px; margin: 0 auto;">
                        <tbody>
                        <tr>
                            <td colspan="2" style="text-align: center">
                                <img src="${path1}/resources/img/logo_noBackground_blue.png" alt="" style="width: 140px;">
                            </td>
                        </tr>
                        <tr>
                            <th style="width: 100px"><label for="id">아이디</label></th>
                            <td><input type="text" name="id" id="id" size="100" class="input" placeholder="아이디 입력" required>
                                <!--  pattern="^[a-z0-9]+$"  -->
                            </td>
                        </tr>
                        <tr>
                            <th><label for="pw">비밀번호</label></th>
                            <td><input type="password" name="pw" id="pw"  class="input" placeholder="비밀번호 입력" required>
                                <!--  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  -->
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <input type="submit" class="button is-primary" value="로그인">
                                <input type="reset" class="button" value="취소">
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>

            </form>
            <script>
                function loginFaiure() {
                    alert("로그인 실패");
                }
            </script>
        </div>
    </div>
</div>


<!-- 푸터 부분 인클루드 -->
<jsp:include page="../include/ft.jsp"></jsp:include>

</body>
</html>