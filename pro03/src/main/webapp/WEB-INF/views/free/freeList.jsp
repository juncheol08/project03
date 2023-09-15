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
	<title>게시판 목록</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
	<style>
		table {
			text-align: center;
		}
	</style>
</head>
<body>
		<!-- 헤더 부분 인클루드 -->
	 	<jsp:include page="../include/hd.jsp"></jsp:include>

	<div class="content" id="content">
	    <div class="row column text-center">
	      <h2 style=" text-align: center">게시판 목록</h2>
	      <hr>
	      <div class="container">
		      <table>
		      	<thead>
		      		<tr>
		      			<th width="10%" >No</th>
		      			<th >제목</th>
		      			<th width="10%">작성자</th>
		      			<th width="10%">작성일</th>
		      			<th width="10%">조회수</th>
		      			<th width="10%">추천</th>
		      		</tr>
		      	</thead>
		      	<tbody>
		      	<c:forEach items="${freeList }" var="free" varStatus="status">
		      		<tr>
		      			<td>${status.count }</td>
		      			<td><a href="${path1}/free/detail.do?bno=${free.bno }">${free.title }</a></td>
		      			<td>${free.id }</td>
		      			<td>
	      					<fmt:parseDate value="${free.regdate }" var="resdate" pattern="yyyy-MM-dd HH:mm:ss" />
	      					<fmt:formatDate value="${resdate }" pattern="yyyy-MM-dd" />
		      			</td>
		      			<td>${free.visited }</td>
		      			<td>${free.rec }</td>
		      		</tr>
		      	</c:forEach>	
		      	</tbody>
		      </table>
			  <c:if test='${!empty sid}'>
		      	<div class="button-group">
				  <a class="button" href="${path1 }/free/insert.do">글쓰기</a>
				</div>
			 </c:if>
	      </div>

	    </div>
	</div>

    	<!-- 푸터 부분 인클루드 -->
    	<jsp:include page="../include/ft.jsp"></jsp:include>

</body>
</html>