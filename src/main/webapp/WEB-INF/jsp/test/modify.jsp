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
        <h2 class="page-title">회원 관리</h2>
      </div>
      <div class="page-body">
      <form role="form" action="/test/modify" method="post">
      <input type="hidden" class="form-control" id="" name="id" value='<c:out value="${list.id}" />' >
        <hr>
		
		<h3 class="contents-title">회원수정</h3>
			<table class="table table-detail">
				<tr>
					<th>유형구분</th>
					<td>
						<div class="input-group">
							<input type="text" class="form-control" id="" name="type" value='<c:out value="${list.type}" />' >
						</div>
					</td>
					<th>봉사단계</th>
					<td>
						<div class="form-inline">
							<div class="input-group">
								<input type="text" class="form-control" id="" name="volunteerStep" value='<c:out value="${list.volunteerStep}" />' >
							</div>
						</div>
					</td>
					<th>번역구분</th>
					<td>
						<div class="form-inline">
							<div class="input-group">
								<input type="text" class="form-control" id="" name="translation" value='<c:out value="${list.translation}" />' >
							</div>
						</div>
					</td>
	
				</tr>
				<tr>
					<th>미번역서신수</th>
					<td>
						<div class="input-group">
							<input type="text" class="form-control" id="" name="noLetterCnt" value='<c:out value="${list.noLetterCnt}" />'>
						</div>
					</td>
					<th>패널티 구분일자</th>
					<td><div class="input-group">
							<input type="text" class="form-control" id="" name="penalty" value='<c:out value="${list.penalty}" />'>
						</div></td>
					<th>담당직원</th>
					<td><div class="form-inline">
							<div class="input-group">
								<input type="text" class="form-control" id="" name="emp" value='<c:out value="${list.emp}" />'>
							</div>
						</div>
					</td>
				</tr>
			</table>

					<br>
        
        <table class="table table-detail">
          <colgroup>
            <col width="13%">
            <col width="25%">
            <col width="13%">
            <col width="25%">
          </colgroup>
          <tr>
            <th>이름</th>
            <td>
              <div class="form-inline">
                <div class="form-group">
                  <label class="sr-only" for="">이름</label>
                  <div class="input-group">
                    <input type="text" class="form-control" id="" name="name" value='<c:out value="${list.name}" />' readonly>
                  </div>
                </div>
              </div>
            </td>
            <th>영문이름</th>
            <td>
              <div class="input-group">
                    <input type="text" class="form-control" id="" name="engName" value='<c:out value="${list.engName}" />' readonly>
                  </div>
            </td>
          </tr>
          <tr>
          	<th>아이디/이메일</th>
            <td colspan="3">
              <div class="form-inline">
                <div class="form-group">
                  <div class="input-group">
                    <input type="text" class="form-control" id="" placeholder="" name="email" value='<c:out value="${list.email}" />' readonly>
                  </div>
                </div>
              </div>
            </td>
          </tr>
          <tr>
          	<th>생년월일</th>
            <td colspan="3">
              <div class="form-inline">
                <div class="form-group">
                  <div class="input-group">
                    <input type="text" class="form-control" id="" name="birth" value='<c:out value="${list.birth}" />' readonly>
                  </div>
                </div>
              </div>
            </td>
          </tr>
          <tr>
            <th>휴대폰번호</th>
            <td>
              <div class="form-inline">
                <div class="form-group">
                  <div class="input-group">
                    <input type="text" class="form-control" id="" name="phoneNum" value='<c:out value="${list.phoneNum}" />' readonly>
                  </div>
                </div>
              </div>
            </td>
            <th>직업</th>
            <td>
              <div class="input-group">
                <input type="text" class="form-control" id="" name="job" value='<c:out value="${list.job}" />' readonly>
              </div>
            </td>
          </tr>
          <tr>
          	<th>자택주소</th>
            <td colspan="3">
              <div class="form-inline">
                <div class="form-group">
                  <div class="input-group">
                    <input type="text" class="form-control" id="" name="adress" value='<c:out value="${list.adress}" />' readonly>
                  </div>
                </div>
              </div>
            </td>
          </tr>
          <tr>
            <th>프로필 사진</th>
            <td colspan="3">
              <div class="form-inline">
                <div class="form-group">
                  <div class="input-group">
                    <img id="" name="files" src="\upload\<c:out value="${list.fileName}"/>" width="30%">
                  </div>
                </div>
              </div>
            </td>
          </tr>
          <tr>
            <th>지원동기</th>
            <td colspan="3">
              <div class="form-group">
                <label class="sr-only" for="">지원동기</label>
                <input type="text" class="form-control" id="" name="contents" value='<c:out value="${list.contents}" />' readonly>
              </div>
            </td>
          </tr>
        </table>
        <br>
        <br>
        <div class="row">
          <div class="col-xs-2">
            <button type="button" class="btn btn-default" onclick="location.href='/test/list1.do'"><i class="fa fa-list-alt"></i> 목록</button>
          </div>
          <div class="col-xs-10 text-right">
            <!-- <button type="button" class="btn btn-info"><i class="fa fa-pencil-square-o"></i> 수정</button>
            <button type="button" class="btn btn-del"><i class="fa fa-trash-o"></i> 삭제</button>
            <button type="button" class="btn btn-add"><i class="fa fa-plus-circle"></i> 추가</button> -->
            <button type="submit" class="btn btn-default"><i class="fa fa-check-circle"></i> 수정</button>
            <button type="button" class="btn btn-default" onclick="location.href='/test/list1.do'"><i class="fa fa-ban"></i> 취소</button>
          </div>
        </div>
        <hr>
        </form>
        <!--  page-->
      </div>
    </div>
  </div>
</div>
</body>
</html>