<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사케누 : 실무에 사용되는 JQUERY 두번째</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<script>
	$(function(){ 
		// .click() : 버튼을 클릭했을 때 이벤트가 발생하는 기능
		$("#btn").click(function(){
			
			// .attr() : input태그들의 속성을 추가해주는 기능
			$("#txt").attr("class", "txt");
			
			// .prop() : .attr()과 달리 속성이 추가되지는 않지만 이벤트 동작은 하는 기능
			$("#chk").prop("checked", true);
				
			// .is() : checked가 true인지 false인지 boolean타입으로 결정하는 기능
			if ($("#chk").is(":checked")){
				alert("11111");				
			} else {
				alert("22222");
			};
		}) 
		
		// .blur() : 포커스가 해당범위를 벗어났을때 이벤트 발생하는 기능
		$("#txt").blur(function(){
			alert("test");
		})
		
		// .keyup() : 키를 눌렀다가 땠을때 이벤트가 발생하는 기능
		$("#txt").keyup(function(){
			alert("test");
		})
	})
	
	// tag안에 있는 onclick속성을 이용할 때...
	function fncClick(){
		
	}
</script>
<style>
	.txt{
		font-size:40px;
	}
</style>
</head>

<body>
	<input type="checkbox" name ="chk" id="chk" />
	<input type="button" id="btn" name="btn" value="버튼" onclick="fncClick()"/>
	<input type="text" name="txt" id="txt" class="txt" />
</body>
</html>