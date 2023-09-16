<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="/pro03_war" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>티스푼 메인 페이지</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="./include/head.jsp"></jsp:include>
</head>
<body>
<jsp:include page="./include/hd.jsp"></jsp:include>
<section class="hero is-large is-info">
    <div class="hero-body" style="background-image:url('${path1}/resources/img/studentBg.jpg'); background-position: center 80px; background-size: cover;"  >
        <p class="title">
            Teaspoon
<%--            Large hero--%>
        </p>
        <p class="subtitle">
            티스푼 커뮤니티입니다.
<%--            Large subtitle--%>
        </p>
    </div>
</section>



<div class="container is-fullhd">

    <section class="section">
        <h1 class="title">자녀 교육 커뮤니티</h1>
        <h2 class="subtitle">
            교육에 대한 팁과 자녀 교육에 관한 정보를 공유하는 <strong>공간</strong>입니다.
        </h2>
    </section>

    <div class="tile is-ancestor">
        <div class="tile is-parent">
            <article class="tile is-child box">
                <p class="title">교육 뉴스</p>
                <p class="subtitle">최신 교육 트렌드</p>
            </article>
        </div>
        <div class="tile is-parent">
            <article class="tile is-child box">
                <p class="title">학습 자료</p>
                <p class="subtitle">유용한 학습 자료 공유</p>
            </article>
        </div>
        <div class="tile is-parent">
            <article class="tile is-child box">
                <p class="title">자녀 교육 이야기</p>
                <p class="subtitle">부모들의 경험과 이야기</p>
                <div class="content">
                    <p>우리 아이의 교육 경험을 함께 나누는 공간입니다. 유용한 정보와 팁을 공유하세요.</p>
                </div>
            </article>
        </div>
    </div>

    <div class="tile is-ancestor">
        <div class="tile is-vertical is-8">
            <div class="tile">
                <div class="tile is-parent is-vertical">
                    <article class="tile is-child box">
                        <p class="title">교육 방법</p>
                        <p class="subtitle">효과적인 교육 방법 소개</p>
                    </article>
                    <article class="tile is-child box">
                        <p class="title">교육 리뷰</p>
                        <p class="subtitle">자녀 교육과 관련된 다양한 리뷰</p>
                    </article>
                </div>
                <div class="tile is-parent">
                    <article class="tile is-child box">
                        <p class="title">교육 세미나</p>
                        <p class="subtitle">교육 전문가의 세미나 정보</p>
                        <figure class="image is-4by3">
                            <img src="https://bulma.io/images/placeholders/640x480.png">
                        </figure>
                    </article>
                </div>
            </div>
            <div class="tile is-parent">
                <article class="tile is-child box">
                    <p class="title">교육 토론</p>
                    <p class="subtitle">다양한 주제로 진행되는 교육 토론</p>
                    <div class="content">
                        <p>부모와 전문가들의 다양한 교육 토론을 들어보세요.</p>
                    </div>
                </article>
            </div>
        </div>
        <div class="tile is-parent">
            <article class="tile is-child box">
                <div class="content">
                    <p class="title">자녀 교육 Q&A</p>
                    <p class="subtitle">자녀 교육에 관한 질문과 답변</p>
                    <div class="content">
                        <p>자녀 교육에 대한 모든 궁금증을 해결하세요. 부모들의 질문과 전문가의 답변을 확인해보세요.</p>
                    </div>
                </div>
            </article>
        </div>
    </div>

    <div class="tile is-ancestor">
        <div class="tile is-parent">
            <article class="tile is-child box">
                <p class="title">질문과 답변</p>
                <p class="subtitle">교육 관련 궁금증 해결</p>
                <div class="content">
                    <p>자녀 교육에 관한 궁금한 점을 질문하고, 다른 부모님들의 경험을 통해 답변을 받아보세요.</p>
                </div>
            </article>
        </div>
        <div class="tile is-parent is-8">
            <article class="tile is-child box">
                <p class="title">자녀 교육 세미나 정보</p>
                <p class="subtitle">유익한 세미나 소식</p>
                <div class="content">
                    <p>다가오는 자녀 교육 관련 세미나와 워크샵 정보를 확인하고 참여하세요.</p>
                </div>
            </article>
        </div>
    </div>


</div>
<!-- 푸터 부분 인클루드 -->
<jsp:include page="./include/ft.jsp"></jsp:include>
</body>
</html>