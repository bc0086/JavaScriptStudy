<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사케누 : 실무에 사용되는 JQUERY 첫번째</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
 <!-- 
 	$(selector).
		선택자의 속성이 될 수 있는 것
			1. #id
			2. .class
			3. tag[name=txt] 
				- tag는 input, select, table, div, span [id, name]
	
	.attr() : input의 태그들의 속성을 추가해주는 기능
-->
<script>
	// jQuery의 이벤트를 사용하기 위한 방법 1 
	$(function(){ 
		$("#btn").click(function(){
			
			var txt = $("#btn").val();
				// .val() : 속성으로 value를 가지고 있는 tag사용시
				// .text() : tag의 열고 닫기 사이의 값
				// .html() : .text()와 달리 tag까지 다 가져온다. 
					// 클릭했을 때 대분류 중분류 소분류 표현할 시 html().html() 이런식으로 사용
			alert('#id(btn)의 결과1 : ' + txt);

			var txt = $("#txt").val();
			alert('#id(txt)의 결과2 : ' + txt);
			
			var txt = $(".txt").val();
			alert('.class의 결과 : '+ txt);
			
			var txt = $("select[id=sel]").val();
			alert('tag[name=txt]의 결과 : ' + txt);			
			
			var txt = $("#dv").text();
			alert('#dv의 .text()의 결과 : ' + txt);
			
			var txt = $("table tr td").text();
			alert('table tr td의 결과 : ' + txt);
			
			var txt = $("tr").text();
			alert('#tr 의 결과 : ' + txt);
			
			$("#dv").text("<input>");
			$("#dv1").html("<input>");
			
			var txt = $("table tr td").eq(2).text();
				// selector가 똑같을 때 .eq()를 사용하면 해당 부분의 값을 가져올 수 있다.
			alert('table tr td의 eq(2)의 결과 : ' + txt);
		})
	})
	
	// jQuery의 이벤트를 사용하기 위한 방법 2
//	$(document).ready(function(){
		
//	})
</script>
</head>

<body>
	<input type="button" id="btn" name="btn" value="버튼"/>
	<input type="text" name="txt" id="txt" class="txt" value="123123" />
	<select name="sel" id="sel">
		<option value="123">abc</option>
	</select>
	
	<div id = "dv" value="test">
		test
	</div>
	
	<table border="1">
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
			<td>4</td>
		</tr>
	</table>
</body>
</html>