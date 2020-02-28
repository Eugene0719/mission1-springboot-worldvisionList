<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="author" content="">
  <title>전체 회원 목록</title>
  <!-- CSS -->
  <link rel="stylesheet" href="/resources/bootstrap/v3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="/resources/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="/resources/custom/css/bootstrap-select.min.css" />
  <link rel="stylesheet" href="/resources/datepicker/v1.6.4/css/bootstrap-datepicker3.min.css" />
  <link rel="stylesheet" href="/resources/datatables/datatables.min.css">
  <link rel="stylesheet" href="/resources/custom/css/font.css">
  <link rel="stylesheet" href="/resources/custom/css/common.css">
  <link rel="stylesheet" href="/resources/custom/css/contents.css">
  <link rel="stylesheet" href="/resources/custom/css/sidebar.css">
  <link rel="stylesheet" href="/resources/custom/css/table.css">
  <link rel="stylesheet" href="/resources/custom/css/green.css">
  <link rel="stylesheet" href="/resources/custom/css/swiper.css">
  <!-- Script -->
  <script src="/resources/custom/js/jquery.min.js"></script>
  <script src="/resources/bootstrap/v3.4.1/js/bootstrap.min.js"></script>
  <script src="/resources/datepicker/v1.6.4/js/bootstrap-datepicker.min.js"></script>
  <script src="/resources/custom/js/bootstrap-select.js"></script>
  <script src="/resources/datatables/datatables.min.js"></script>
  <script src="/resources/swiper/4.5.1/swiper.min.js"></script>
  <script src="/resources/custom/js/menu.js"></script>
  <script type="text/javascript" src="/resources/custom/js/common.js"></script>
</head>
<body>
<div class="warp">
  <!-- page -->
  <div class="container-fluid" data-role="contents">
    <div class="page clearfix">
      <div class="page-header clearfix">
        <h2 class="page-title">회원상세정보</h2>
      </div>
        <hr>
		<form role="form" method="post">
		<input type = "hidden" name="id" value="${list.id}"></input>
        <table class="table table-detail">
          <tr>
            <th>유형구분</th>
            
            <td><c:out value="${list.type}"/></td>
            <th>봉사단계</th>
            <td>
	            <select name="volunteerStep" disabled >
	            	<option value="1" <c:if test="${list.volunteerStep eq 1}">selected</c:if> >새싹</option>
	            	<option value="2" <c:if test="${list.volunteerStep eq 2}">selected</c:if> >열매</option>
	            </select>
            </td>
            <th>번역구분</th>
            <td>
            	<select name="translation" disabled >
	            	<option value="1" <c:if test="${list.translation eq 1}">selected</c:if> >모두</option>
	            	<option value="2" <c:if test="${list.translation eq 2}">selected</c:if> >아동서신</option>
	            	<option value="3" <c:if test="${list.translation eq 3}">selected</c:if> >후원자서신</option>
	            </select>
	        </td>
          </tr>
          <tr>
            <th>미번역서신수</th>
            <td><c:out value="${list.noLetterCnt}"/></td>
            <th>패널티 구분일자</th>
            <td><c:out value="${list.penalty}"/></td>
            <th>담당직원</th>
            <td>
            	<select name="translation" disabled >
	            	<option value="1" <c:if test="${list.emp eq 1}">selected</c:if> >김직원</option>
	            	<option value="2" <c:if test="${list.emp eq 2}">selected</c:if> >박직원</option>
	            	<option value="3" <c:if test="${list.emp eq 3}">selected</c:if> >최직우</option>
	            </select>
	       </td>
            <c:out value="${list.emp}"/>
          </tr>
        </table>

        <br>
        
        <table class="table table-detail">
	      <colgroup>
	        <col width="20%">
	        <col width="15%">
	        <col width="15%">
	        <col width="20%">
	        </colgroup>
          <tr>
            <th>이름</th>
            <td><c:out value="${list.name}"/></td>
            <th>영문이름</th>
            <td><c:out value="${list.engName}"/></td>
          </tr>
          <tr>
            <th>아이디/이메일</th>
            <td colspan="3"><c:out value="${list.email}"/></td>
          </tr>
          <tr>
            <th>생년월일</th>
            <td colspan="3"><c:out value="${list.birth}"/></td>
          </tr>
          <tr>
            <th>휴대폰번호</th>
            <td><c:out value="${list.phoneNum}"/></td>
            <th>직업</th>
            <td><c:out value="${list.job}"/></td>
          </tr>
          <tr>
            <th>자택주소</th>
            <td colspan="3"><c:out value="${list.adress}"/></td>
          </tr>
          <tr>
            <th>프로필 사진</th>
            <td colspan="3"><img src="\upload\<c:out value="${list.fileName}"/>" width="30%"/></td>
          </tr>
          <tr>
            <th>지원동기</th>
            <td colspan="3"><c:out value="${list.contents}"/></td>
          </tr>
          
        </table>
        </form>
        <br>
        <br>
        <div class="row">
          <div class="col-xs-2">
            <button type="button" class="btn btn-default" onclick="location.href='/test/list1.do'"><i class="fa fa-list-alt"></i> 목록</button>
          </div>
          <div class="col-xs-10 text-right">
            <button type="button" class="btn btn-info" onclick="location.href='modify?id=${list.id}'"><i class="fa fa-pencil-square-o"></i> 수정</button>
            <button type="button" class="btn btn-del" onclick="location.href='delete?id=${list.id}'"><i class="fa fa-trash-o"></i> 삭제</button>
          </div>
        </div>
        <hr>
      </div>
    </div>
</body>
</html>