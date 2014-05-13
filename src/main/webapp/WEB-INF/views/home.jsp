<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
	<title>Home</title>
	<style>
	p {
		background: yellow;
		font-weight: bold;
		cursor: pointer;
		padding: 5px;
	}
	
	p.over {
		background: #ccc;
	}
	
	span {
		color: red;
	}
	</style>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript">
		$(function(){
			
			$('p').append('<div>안녕</div>');
			
			$('#button').bind('click', function(){
				console.log(this);
				$('#dataView').append('<p>뭐하냐</p>');
			});
			$('#button2').on('click', function(){
				console.log(this);
				$('#dataView').append('<p>뭐하냐2</p>');
			});
			
			$('#checkbox').on('click', function(){
				console.log('1');
			}).on('dbclick', function(){
				console.log('2');
			});
		});
		//function click(obj){
			//console.log(obj);
			//$('#dataView').append('<p>뭐하냐</p>');
		//} 
		
		$( "body" ).delegate( "p", "click", function() {
		  $( this ).after( "<p>Another paragraph!</p>" );
		});
		var con = true;
		function aa(obj){
			var id = $(obj).prop('id');
			var check = $('#'+id).is(':checked');
			if(check && con == true){
				$('#append').append('<p>체크박스 테스트입니다.!!</p>');
				con = false;
			}else{
				$('#append').empty();
				con = true;
			}
		}
	</script>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<p>Click me!</p>

<div id="dataView">

</div>

<input type="button" id="button" value="클릭"/>
<input type="button" id="button2" value="클릭"/></p>
<!-- <input type="button" id="button" value="클릭" onclick="click(this)"/> -->
체크<input type="checkbox" name="checkbox" id="checkbox" value="checkbox" onclick="aa(this);"/>
<div id="append"></div>
</body>
</html>
