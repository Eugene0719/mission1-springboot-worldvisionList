<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
 <script src="https://code.jquery.com/jquery-3.3.1.js"></script> 
<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.6.1/js/dataTables.buttons.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.6.1/js/buttons.html5.min.js"></script>


<script type="text/javascript">
$(document).ready(function() {
    var buttonCommon = {
        exportOptions: {
            format: {
                body: function ( data, row, column, node ) {
                    // Strip $ from salary column to make it numeric
                    return column === 5 ?
                        data.replace( /[$,]/g, '' ) :
                        data;
                }
            }
        }
    };
 
    var data = "";
    $('#example').DataTable( {
    	 ajax : {
	            url : "/test/ajax/ListAjax.do",
	            data : function(param, settings) {
	            	
	            	}
	            },
	            columns : [
		            {"title": "No", "data":"rownum","width":"5%","render":"","name":"false"},
		            {"title": "유형구분", "data":"type","width":"8%","render":"","name":"false"},
		            {"title": "봉사단계", "data":"volunteerStep","width":"8%","render":"","name":"false"},
		            {"title": "이름", "data":"name","width":"8%","render":"","name":"false"},
		            {"title": "생년월일", "data":"birth","width":"8%","render":"","name":"false"},
		            {"title": "아이디", "data":"engName","width":"8%","render":"","name":"false"},
		            {"title": "이메일", "data":"email","width":"8%","render":"","name":"false"},
		            {"title": "번역구분", "data":"translation","width":"8%","render":"","name":"false"},
		            {"title": "담당직원", "data":"emp","width":"8%","render":"","name":"false"},
		            {"title": "가입일", "data":"regdate","width":"8%","render":"","name":"false"} 
		    ],
		    columnDefs : [ {
		        className : "dt-body-center",targets : 0}, {
		        className : "dt-body-center",targets : 1}, {
		        className : "dt-body-center",targets : 2}, {
		        className : "dt-body-center",targets : 3}, {
		       	className : "dt-body-center",targets : 4}, {
		   		className : "dt-body-center",targets : 5}, {
				className : "dt-body-center",targets : 6}, {
				className : "dt-body-center",targets : 7}, {
				className : "dt-body-center",targets : 8}, { 
		        className : "dt-body-center",targets : 9}, 
		        
		        ],
        dom: 'Bfrtip',
        buttons: [
            $.extend( true, {}, buttonCommon, {
                extend: 'copyHtml5'
            } ),
            $.extend( true, {}, buttonCommon, {
                extend: 'excelHtml5'
            } ),
            $.extend( true, {}, buttonCommon, {
                extend: 'pdfHtml5'
            } )
        ]
    } );
} );
</script>
<body>
<table id="example" >
    </table>
</body>
</html>