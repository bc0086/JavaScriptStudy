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
		$("#btn").click(function(){
			$("#txt").attr("class", "txt");
				// .attr() : input태그들의 속성을 추가해주는 기능
			
			$("#chk").prop("checked", true);
				// .prop() : .attr()과 달리 속성이 추가되지는 않지만 이벤트 동작은 하는 기능
				
			if ($("#chk").is(":checked")){
				// .is() : checked가 true인지 false인지 boolean타입으로 결정하는 기능
				alert("11111");				
			} else {
				alert("22222");
			};
			
		}) 
		
		$("#txt").blur(function(){
			// .blur() : 포커스가 해당범위를 벗어났을때 이벤트 발생하는 기능
			alert("test");
		})
		
		$("#txt").keyup(function(){
			// .keyup() : 키를 눌렀다가 땠을때 이벤트가 발생하는 기능
			alert("test");
		})
		
	})
		
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