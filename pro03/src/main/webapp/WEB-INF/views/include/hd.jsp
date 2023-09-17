<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />

<header id="hd">
<%--<header id="hd" class="container is-fullhd">--%>

<nav class="navbar is-fixed-top" role="navigation" aria-label="main navigation" style="height: 90px; background-color: #D9E7E6">
    <div class="navbar-brand" style="height: 90px">
        <a class="navbar-item" href="${path1}" >
            <img src="${path1}/resources/img/logo_noBackground_blue.png" class="logoimg">
        </a>

        <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
        </a>
    </div>

    <div id="navbarBasicExample" class="navbar-menu">
        <div class="navbar-start">
            <a href="${path1}/notice/list.do" class="navbar-item">
                공지사항
            </a>
            <a href="${path1}/free/list.do" class="navbar-item">
                게시판old
            </a>
            <div class="navbar-item has-dropdown is-hoverable">
                <a class="navbar-link">
                    게시판
                </a>
                <div class="navbar-dropdown">
                    <a href="${path1}/board/list.do" class="navbar-item">
                        자유게시판
                    </a>
                    <a href="${path1}/boardTea/list.do" class="navbar-item">
                        선생님게시판
                    </a>
                    <a href="${path1}/boardPar/list.do" class="navbar-item">
                        학부모게시판
                    </a>
                    <%--                    <hr class="navbar-divider">--%>
                </div>
            </div>

            <div class="navbar-item has-dropdown is-hoverable">
                <a class="navbar-link">
                    자료실
                </a>
                <div class="navbar-dropdown">
                    <a href="${path1}/guestbook/list.do" class="navbar-item">
                        자료실
                    </a>
                    <a href="${path1 }/file/filelist1.do" class="navbar-item">
                        Fileboard
                    </a>
<%--                    <hr class="navbar-divider">--%>
                </div>
            </div>
        </div>

        <div class="navbar-end">
            <div class="navbar-item">
                <div class="buttons">
                    <c:if test="${!empty sid}">
                        <p style="margin-right: 20px">환영합니다. ${sid}님</p>

                    <a href="${path1}/member/mypage.do" class="button is-info is-light">
                        <img src="${path1}/resources/img/user.png" >&nbsp;&nbsp;
                        <strong>MyPage</strong>
                    </a>
                    <a href="${path1}/member/logout.do" class="button is-danger is-light">
                        <img src="${path1}/resources/img/log-out.png" >&nbsp;&nbsp;
                        Log out
                    </a>
                    </c:if>
                    <c:if test="${empty sid}">
                        <a href="${path1}/member/term.do" class="button is-success is-light">
                            <img src="${path1}/resources/img/add-user.png" >&nbsp;&nbsp;
                            <strong>Sign up</strong>
                        </a>
                        <a href="${path1}/member/login.do" class="button is-link is-light">
                            <img src="${path1}/resources/img/log-in.png" >&nbsp;&nbsp;
                            Log in
                        </a>
                    </c:if>
                    <c:if test="${sid.equals('admin')}">
                        <a href="${path1}/admin/adminMain.do" class="button is-danger">
                            admin
                        </a>
                    </c:if>

                </div>
            </div>
        </div>
    </div>
</nav>
</header>