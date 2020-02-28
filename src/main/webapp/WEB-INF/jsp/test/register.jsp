<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
      <form role="form" action="/test/register" method="post" enctype="multipart/form-data">
        <hr>
		
		<h3 class="contents-title">회원등록</h3>
			<table class="table table-detail">
				<tr>
					<th>유형구분</th>
					<td>
						<div class="input-group">
							<input type="text" class="form-control" id="" name="type" placeholder="" required>
						</div>
					</td>
					<th>봉사단계</th>
					<td>
						<div class="form-inline">
							<div class="input-group">
								<select class="selectpicker" name="volunteerStep">
									<option value="1">새싹</option>
									<option value="2">열매</option>
								</select>
							</div>
						</div>
					</td>
					<th>번역구분</th>
					<td>
						<div class="form-inline">
							<div class="input-group">
								<select class="selectpicker" name="translation">
									<option value="1">모두</option>
									<option value="2">아동서신</option>
									<option value="3">후원자서신</option>
								</select>
							</div>
						</div>
					</td>
	
				</tr>
				<tr>
					<th>미번역서신수</th>
					<td>
						<div class="input-group">
							<input type="text" class="form-control" id="" name="noLetterCnt" placeholder="" required>
						</div>
					</td>
					<th>패널티 구분일자</th>
					<td><div class="input-group">
							<input type="text" class="form-control" id="" name="penalty" placeholder="" required>
						</div></td>
					<th>담당직원</th>
					<td><div class="form-inline">
							<div class="input-group">
								<select class="selectpicker" name="emp">
									<option value="1">김직원</option>
									<option value="2">박직원</option>
									<option value="3">최직원</option>
								</select>
							</div>
						</div></td>
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
                    <input type="text" class="form-control" id="" name="name" placeholder="이름을 입력하세요" required>
                  </div>
                </div>
              </div>
            </td>
            <th>영문이름</th>
            <td>
              <div class="input-group">
                    <input type="text" class="form-control" id="" name="engName" placeholder="영문이름을 입력하세요" required>
                  </div>
            </td>
          </tr>
          <tr>
          	<th>아이디/이메일</th>
            <td colspan="3">
              <div class="form-inline">
                <div class="form-group">
                  <div class="input-group">
                    <input type="text" class="form-control" id="" placeholder="" name="email" required>
                    <label class="checkbox-inline">
		                <input type="checkbox" id="">서신할당 알림메일 수신허용 (해외거주 등 문자수신 불가한 경우)
		                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<input type="checkbox" id="" value="">이메일 수신 동의
		              </label>
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
                    <input type="text" class="form-control" id="" name="birth" placeholder="" required>
                    <label class="radio-inline">
		              <input type="radio" name="" id="" value="">양력
		            </label>
		            <label class="radio-inline">
		              <input type="radio" name="" id="" value="">음력
		            </label>
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
                    <input type="text" class="form-control" id="" name="phoneNum" placeholder="휴대폰번호를 입력하세요" required>
                    <label class="checkbox-inline">
		              <input type="checkbox" id="" value="">SMS 수신동의
		            </label>
                  </div>
                </div>
              </div>
            </td>
            <th>직업</th>
            <td>
              <div class="input-group">
                <input type="text" class="form-control" id="" name="job" placeholder="직업을 입력하세요" required>
              </div>
            </td>
          </tr>
          <tr>
          	<th>자택주소</th>
            <td colspan="3">
              <div class="form-inline">
                <div class="form-group">
                  <div class="input-group">
                    <input type="text" class="form-control" id="" name="adress" laceholder="주소입력 하세요" required>
                    <label class="checkbox-inline">
		              <input type="checkbox" id="" value="">자택주소 정보 동의
		            </label>
                  </div>
                </div>
              </div>
            </td>
          </tr>
          <tr>
            <th>프로필 사진</th>
            <td colspan="3">
              <div class="form-group">
                <div class="filebox">
                	<label for="ex_file"></label> 
                	<input type="file" id="file" name="files"> 
                </div>
              </div>
            </td>
          </tr>
          <tr>
            <th>지원동기</th>
            <td colspan="3">
              <div class="form-group">
                <label class="sr-only" for="">지원동기</label>
                <input type="text" class="form-control" id="" name="contents" placeholder="" required>
              </div>
            </td>
          </tr>
        </table>
        <label class="checkbox-inline">
          <input type="checkbox" id="" value="">최소 6개월 이상 봉사활동을 성실히 할 것을 약속합니다.
        </label>
        <br>
        <br>
        <div class="row">
          <div class="col-xs-2">
            <button type="button" class="btn btn-default" onclick="location.href='/test/list1.do'"><i class="fa fa-list-alt"></i> 목록</button>
          </div>
          <div class="col-xs-10 text-right">
            <button type="submit" class="btn btn-default"><i class="fa fa-check-circle"></i> 등록</button>
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