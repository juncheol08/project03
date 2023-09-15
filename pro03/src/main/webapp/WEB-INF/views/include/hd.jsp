<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />

<header id="hd" class="container is-fullhd">

<nav class="navbar" role="navigation" aria-label="main navigation">
    <div class="navbar-brand">
        <a class="navbar-item" href="${path1}">
            <img src="https://bulma.io/images/bulma-logo.png" width="112" height="28">
        </a>

        <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
        </a>
    </div>

    <div id="navbarBasicExample" class="navbar-menu">
        <div class="navbar-start">
            <a href="${path1}/board/list.do" class="navbar-item">
                공지사항
            </a>
            <a href="${path1}/free/list.do" class="navbar-item">
                게시판
            </a>

            <div class="navbar-item has-dropdown is-hoverable">
                <a class="navbar-link">
                    자료실
                </a>
                <div class="navbar-dropdown">
                    <a href="${path1}/guestbook/list.do" class="navbar-item">
                        자료실
                    </a>
                    <a href="${path1}/sample2/list.do" class="navbar-item">
                        Sample
                    </a>
<%--                    <hr class="navbar-divider">--%>
                </div>
            </div>
        </div>

        <div class="navbar-end">
            <div class="navbar-item">
                <div class="buttons">
                    <c:if test="${!empty sid}">
                    <a href="${path1}/member/mypage.do" class="button is-primary">
                        <strong>MyPage</strong>
                    </a>
                    <a href="${path1}/member/logout.do" class="button is-light">
                        Log out
                    </a>
                    </c:if>
                    <c:if test="${empty sid}">
                        <a href="${path1}/member/term.do" class="button is-primary">
                            <strong>Sign up</strong>
                        </a>
                        <a href="${path1}/member/login.do" class="button is-light">
                            Log in
                        </a>
                    </c:if>
                    <c:if test="${sid.equals('admin')}">
                        <a href="${path1}/member/list.do" class="button is-primary">
                            <strong>MemberList</strong>
                        </a>
                    </c:if>

                </div>
            </div>
        </div>
    </div>
</nav>
</header>