<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="author" content="경기도 ICT 정보시스템">
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
  <div id="header" class="header navbar navbar-fixed-top" data-role="header">
    <!-- navbar-header -->
    <div class="navbar-header">
      <button id="sidebarButton" data-target="#sidebar" type="button" class="btn btn-top-menu hidden-lg"><i class="fa fa-bars"></i></button>
      <a href="index.html" class="navbar-brand hidden-lg">
        <h1 class="brand-text">경기도ICT정보시스템</h1>
      </a>
    </div>
    <div class="top-menu-scroll swiper-container">
      <ul class="top-menu swiper-wrapper">
        <li class="swiper-slide top-menu-item menu-1"><a href="/list1">회원 목록<span class="menu-bar"></span></a></li>
        <li class="swiper-slide top-menu-item menu-2"><a href="/get">회원 상세<span class="menu-bar"></span></a></li>
        <li class="swiper-slide top-menu-item menu-3"><a href="/register">회원 등록<span class="menu-bar"></span></a></li>
        <li class="swiper-slide top-menu-item menu-4"><a href="/modify">회원 수정<span class="menu-bar"></span></a></li>
        <!-- <li class="swiper-slide top-menu-item menu-5"><a href="#">컨설팅정보<span class="menu-bar"></span></a></li>
        <li class="swiper-slide top-menu-item menu-6"><a href="#">영농정보<span class="menu-bar"></span></a></li> -->
      </ul>
    </div>
    <div class="navbar-user">
      <button type="button" class="btn-admin"><i class="fa fa-user-circle-o"></i></button>
      <button type="button" class="btn-admin"><i class="fa fa-power-off"></i></button>
    </div>
    <!-- // navbar-header -->
  </div>
  <!-- sidebar -->
  <div class="sidebar" id="sidebar" data-target="#sidebarButton" data-no-print>
    <div class="brand-symbol"><img src="resources/custom/images/basicit.png" alt="회원수정" class="brand-img"></div>
    <h2 class="sub-title">회원수정</h2>
    <!-- <div class="left-menu-scroll">
      <ul class="left-menu">
        <li class="left-menu-item menu-1-1">
          <a href="#" class="left-menu-title">종합상황판</a>
        </li>
      </ul>
    </div> -->
  </div>
  <!-- // sidebar -->
  <!-- page -->
  <div class="container-fluid" data-role="contents">
    <div class="breadcrumb">
      <i class="fa fa-home"></i><span>회원관리</span><span>회원수정</span>
      <button type="button" class="btn btn-question pull-right" data-toggle="modal" data-target="#help"><i class="fa fa-question-circle"></i></button>
    </div>
    <div class="page clearfix">
      <div class="page-header clearfix">
        <h2 class="page-title">회원 관리</h2>
      </div>
      <div class="page-body">


        <hr>
		
		<h3 class="contents-title">회원등록</h3>
        <table class="table table-write">
          <colgroup>
            <col width="12%">
            <col width="38%">
            <col width="12%">
            <col width="38%">
          </colgroup>
          <tr>
            <th>유형구분</th>
            <td>
              <div class="input-group">
                 <input type="text" class="form-control" id="" placeholder="">
               </div>
            </td>
            <th>미번역서신수</th>
            <td>
              <div class="input-group">
                 <input type="text" class="form-control" id="" placeholder="">
               </div>
            </td>
          </tr>
          <tr>
            <th>봉사단계</th>
            <td>
              <div class="form-inline">
              <div class="input-group">
                <select class="selectpicker">
                  <option>새싹</option>
                  <option>열매</option>
                </select>
                </div>
              </div>
            </td>
            <th>패널티 구분일자</th>
            <td>
              <div class="input-group">
                  <input type="text" class="form-control" id="" placeholder="">
                </div>
            </td>
          </tr>
          <tr>
            <th>번역구분</th>
            <td>
              <div class="form-inline">
              <div class="input-group">
                <select class="selectpicker">
                  <option>모두</option>
                  <option>아동서신</option>
                  <option>후원자서신</option>
                </select>
                </div>
              </div>
            </td>
            <th>담당직원</th>
            <td>
              <div class="form-inline">
              <div class="input-group">
                <select class="selectpicker">
                  <option>김직원</option>
                  <option>박직원</option>
                  <option>최직원</option>
                </select>
                </div>
              </div>
            </td>
          </tr>
          
        </table>
        <br><br>
        
        <table class="table table-write">
          <colgroup>
            <col width="12%">
            <col width="38%">
            <col width="12%">
            <col width="38%">
          </colgroup>
          <tr>
            <th>이름</th>
            <td>
              <div class="form-inline">
                <div class="form-group">
                  <label class="sr-only" for="">이름</label>
                  <div class="input-group">
                    <input type="text" class="form-control" id="" placeholder="이름을 입력하세요">
                    <!-- <div class="input-group-addon input-group-button">
                      <button type="button" class="btn btn-search"><i class="fa fa-search"></i> 검색</button>
                    </div> -->
                  </div>
                </div>
              </div>
            </td>
            <th>영문이름</th>
            <td>
              <div class="input-group">
                    <input type="text" class="form-control" id="" placeholder="영문이름을 입력하세요">
                    <!-- <div class="input-group-addon input-group-button">
                      <button type="button" class="btn btn-search"><i class="fa fa-search"></i> 검색</button>
                    </div> -->
                  </div>
            </td>
          </tr>
          <tr>
          	<th>아이디/이메일</th>
            <td colspan="3">
              <div class="form-inline">
                <div class="form-group">
                  <div class="input-group">
                    <input type="text" class="form-control" id="" placeholder="">
                    <label class="checkbox-inline">
		                <input type="checkbox" id="" value="">서신할당 알림메일 수신허용 (해외거주 등 문자수신 불가한 경우)
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
                    <input type="text" class="form-control" id="" placeholder="">
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
                    <input type="text" class="form-control" id="" placeholder="휴대폰번호를 입력하세요">
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
                <input type="text" class="form-control" id="" placeholder="직업을 입력하세요">
              </div>
            </td>
          </tr>
          <tr>
          	<th>자택주소</th>
            <td colspan="3">
              <div class="form-inline">
                <div class="form-group">
                  <div class="input-group">
                    <input type="text" class="form-control" id="" placeholder="주소입력 하세요">
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
                	<input type="file" id="ex_file"> 
                </div>
              </div>
            </td>
          </tr>
          <tr>
            <th>지원동기</th>
            <td colspan="3">
              <div class="form-group">
                <label class="sr-only" for="">지원동기</label>
                <input type="text" class="form-control" id="" placeholder="">
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
            <button type="button" class="btn btn-default"><i class="fa fa-list-alt"></i> 목록</button>
          </div>
          <div class="col-xs-10 text-right">
            <!-- <button type="button" class="btn btn-info"><i class="fa fa-pencil-square-o"></i> 수정</button>
            <button type="button" class="btn btn-del"><i class="fa fa-trash-o"></i> 삭제</button>
            <button type="button" class="btn btn-add"><i class="fa fa-plus-circle"></i> 추가</button> -->
            <button type="button" class="btn btn-default"><i class="fa fa-check-circle"></i> 확인</button>
            <button type="button" class="btn btn-default"><i class="fa fa-ban"></i> 취소</button>
          </div>
        </div>
        <hr>

        <!-- <h3 class="contents-title">버튼</h3>
        <div class="clearfix">
          <button type="button" class="btn btn-save"><i class="fa fa-pencil-square-o"></i> 생육조사등록</button>
          <button type="button" class="btn btn-save"><i class="fa fa-pencil-square-o"></i> 등록</button>
          <button type="button" class="btn btn-save"><i class="fa fa-pencil-square-o"></i> 저장</button>
          <button type="button" class="btn btn-info"><i class="fa fa-pencil-square-o"></i> 수정</button>
          <button type="button" class="btn btn-add"><i class="fa fa-plus-circle"></i> 추가</button>
          <button type="button" class="btn btn-del"><i class="fa fa-trash-o"></i> 삭제</button>
          <button type="button" class="btn btn-success"><i class="fa fa-file-excel-o"></i> 액셀 다운로드</button>
          <hr>
          <button type="button" class="btn btn-default"><i class="fa fa-upload"></i> 업로드</button>
          <button type="button" class="btn btn-default"><i class="fa fa-download"></i> 다운로드</button>
          <button type="button" class="btn btn-default"><i class="fa fa-file-text-o"></i> 첨부파일</button>
          <button type="button" class="btn btn-default"><i class="fa fa-ban"></i> 취소</button>
          <button type="button" class="btn btn-default"><i class="fa fa-times"></i> 닫기</button>
          <button type="button" class="btn btn-default"><i class="fa fa-list-alt"></i> 목록</button>
          <button type="button" class="btn btn-default"><i class="fa fa-chevron-left"></i> 이전</button>
          <button type="button" class="btn btn-default"><i class="fa fa-chevron-right"></i> 다음</button>
          <hr>
          <button type="button" class="btn btn-default">기본</button>
          <button type="button" class="btn btn-primary">기본</button>
          <button type="button" class="btn btn-success">기본</button>
          <button type="button" class="btn btn-info">기본</button>
          <button type="button" class="btn btn-warning">기본</button>
          <button type="button" class="btn btn-danger">기본</button>
          <hr>
          <button type="button" class="btn btn-sm btn-default">작게</button>
          <button type="button" class="btn btn-default">보통</button>
          <button type="button" class="btn btn-lg btn-default">크게</button>
          <hr>
          <button type="button" class="btn btn-block btn-default">꽉차는 버튼</button>
        </div> -->
      </div>
    </div>
  </div>
  <div class="footer" data-role="footer">
      <address>18388 경기도 화성시 병점중앙로 283-33(기산동)<br class="visible-xs"> 경기도 스마트팜 현장지원센터<small>｜</small>Tel. 031-229-5899<small>｜</small><a href="#" class="footer-link">개인정보처리방침</a></address>
      <p class="copyright">&copy; GsmartFarm. All Right Reserved.</p>
  </div>
  <!-- // page -->
</div>

<div class="modal fade" tabindex="-1" role="dialog" id="help">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">도움말</h4>
      </div>
      <div class="modal-body">
        <p class="help-list-item">작형정보를 관리하는 화면입니다.</p>
        <p class="help-list-item">작형 등록 시 농가 및 재배시설이 반드시 등록되어 있어야 작형정보 등록이 가능합니다.</p>
        <p class="help-list-item">농가검색 시 농가명 정보가 없는 경우는 해당 농가의 회원으로 가입되지 않거나 회원정보와 농가정보가 매칭되지 않는 경우 발생합니다. 회원정보를 확인하시기 바랍니다.</p>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<script type="text/javascript">
  $(document).ready(function(){
    $('#sidebar').menu();
    $('.menu-4').addClass('active');
    $('.menu-1-1').addClass('active');

    var topMenu = new Swiper('.swiper-container', {
        slidesPerView: 4,
        paginationClickable: true,
        spaceBetween: 0,
        freeMode: true,
		    pagination: false
    });

    $('#mapDatepicker').datepicker({
      language: "kr",
      format: 'yyyy/mm/dd',
      todayHighlight: true,
      autoclose: true
    });

    $('#table-sample').DataTable();
    
    $(".btn-default").on("click", function(){
		self.location="/list1";
});
  });
</script>
</body>
</html>