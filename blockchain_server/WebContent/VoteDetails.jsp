<%@page import="com.blockchain.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  
	<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
  	<link rel="stylesheet" href="./Resources/css/votepage_Details2.css?ver=1">
 
  	<script src="./Resources/js/vote.js"></script>
	<script src="./Resources/js/ethereumjs-tx-1.3.3.min.js"></script>
	<script type="text/javascript">

	  $(document).ready(function() {
	    $('.prev').click(function() {
	      $('.list').stop().animate({
	        'margin-left': '-1300px'
	      }, function() {
	        $('.list li:first-child').appendTo('.list');
	        $('.list').css({
	          'margin-left': '-650px'
	        });
	      });
	    });
	    $('.next').click(function() {
	      $('.list').stop().animate({
	        'margin-left': '0px'
	      }, function() {
	        $('.list li:last-child').prependTo('.list');
	        $('.list').css({
	          'margin-left': '-650px'
	        });
	      });
	    });

	    var list_a = [contents1, contents2, contents3];
	    var i = 0;
	    $('.prev').click(function(){
	        i-=1;
	        if(i==-1){
	          i=2;
	        }
	        $('#tab_contents>li').hide();
	        $(list_a[i]).show();
	      });


	    $('.next').click(function(){
	        i+=1;
	        i=i%3;
					$('#tab_contents>li').hide();
					$(list_a[i]).show();
				});
	    });
	  
		$(document).ready(function(){
			var voteform = document.getElementById('vote_form');
			var votefinish = document.getElementById('vote_finish');
			votefinish.style.display = "none";
			
			//<a href="#"><i class="ion-ios-home"></i></a><a href="#"><i class="ion-ios-email"></i></a><a href="#"><i class="ion-ios-telephone"></i></a>
		});

		$(function(){
			$('#detail_text1').click(function(e){
				$('#tab_contents>li').hide();
				$('#contents1').show();
			});	
		});
		$(function(){
			$('#detail_text2').click(function(e){
				$('#tab_contents>li').hide();
				$('#contents2').show();
			});	
		});
		$(function(){
			$('#detail_text3').click(function(e){
				$('#tab_contents>li').hide();
				$('#contents3').show();
			});	
		});
	</script>
</head>
<body>
	
  <div>
    <%@ include file="/navbar.jsp" %>
  </div>
  <div class="c_wrap">
  <div class="carousel" style="margin-top:80px;">
    <ul class="list">
      <li class="a1">
        <div class="vote_container">
          <div class="vote_detail_imgbox">
            <img class="vote_detail_img" src="https://images.unsplash.com/photo-1508075541036-9c4a5e4e6bdd?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=4fb285962569548824ae1b00c3a53c44&auto=format&fit=crop&w=3026&q=80" alt="">
          </div>
        </div>
      </li>
      <li class="a2">
        <div class="vote_container">
          <div class="vote_detail_imgbox">
            <img class="vote_detail_img" src="https://images.unsplash.com/photo-1477281765962-ef34e8bb0967?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=31e82f46b077da92e44712da8f71bc51&auto=format&fit=crop&w=1532&q=80" alt="">
          </div>
        </div>
      </li>
      <li class="a3">
        <div class="vote_container">
          <div class="vote_detail_imgbox">
            <img class="vote_detail_img" src="https://images.unsplash.com/photo-1522004364249-3ea0724b534e?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=12202e4e99fe35a2bc6a0e8ad295ac88&auto=format&fit=crop&w=1950&q=80" alt="">
          </div>
        </div>
      </li>
    </ul>
  </div>
  <div class="prev"><img class="next_img" src="https://static.thenounproject.com/png/1527673-200.png" alt=""></div>
  <div class="next"><img class="next_img" src="https://static.thenounproject.com/png/1527676-200.png" alt=""></div>
</div>

<div class="tab_container">
  <ul id="tab_contents">
    <li id="contents1"> <h1>제 24회 컴퓨터공학과 임원 선출</h1> </li>
    <li id="contents2">
      <div class="vote_detail_text">
        <div style="text-align: center">
          <h2>기호 1번</h2>

        </div>
        <div class="vote_detail_text_left">
          <h3>회장 후보 약력</h3>
          <p>
            <strong>2011년</strong> 동북고등학교 졸업<br>
            <strong>2011년</strong> 홍익대학교 입학<br>
            <strong>2015년</strong> 전,의경 만기제대<br>
            <strong>2017년</strong> (주)판다라이슈 입사
          </p>
        </div>
        <div class="vote_detail_text_right">
          <h3>부회장 후보 약력</h3>
          <p>
            배제고등학교 졸업 <strong>2015년</strong> <br>
            홍익대학교 입학 <strong>2015년</strong> <br>
            육군 만기제대 <strong>2017년</strong> <br>
            컴퓨터공학회장 <strong>2018년</strong> <br>
          </p>
        </div>
      </div>
    </li>
    <li id="contents3">
      <div class="vote_detail_text">
        <div style="text-align: center">
          <h2>기호 2번</h2>
        </div>
        <div class="vote_detail_text_left">
          <h3>회장 후보 약력</h3>
          <p>
            <strong>2011년</strong> 상일고등학교 졸업<br>
            <strong>2011년</strong> 홍익대학교 입학<br>
            <strong>2015년</strong> 육군 만기제대<br>
            <strong>2017년</strong> 홍아람 단장
          </p>
        </div>
        <div class="vote_detail_text_right">
          <h3>부회장 후보 약력</h3>
          <p>
            의정부고등학교 졸업 <strong>2015년</strong> <br>
            홍익대학교 입학 <strong>2015년</strong> <br>
            육군 만기제대 <strong>2017년</strong> <br>
            홍아람 팀장 <strong>2018년</strong> <br>
          </p>
        </div>
      </div>
    </li>
  </ul>
</div>
<div class="vote_clear">
</div>
<div class="vote_container2">
  <div class="do_vote">
    <div style="display: block;">
      <h1><br></h1>
    </div>
    <h1 style="text-align: center;">투표하세요</h1>
    <div class="stepz">
      <h3>
        <br>
         <투표 시 주의 사항>

      </h3>
      <ol>
        <li>
          <br>
           해당 후보에게 투표한 정보는 블록체인에 저장됩니다.
        </li>
        <li>
           자신의 투표지가 블록체인 상에서 어떤 블록에 포함되었는지 확인 할 수 있습니다.
        </li>
        <li>
           한번 투표 하면 되돌리기가 불가능하오니, 신중하게 투표해주세요.<br>
        </li>
      </ol>
    </div>
    <div style="display: block;">
      <h1><br></h1>
    </div>
   </div>
   
	<div id="vote" class="container center-block">
			<div class="row text-center">
				<form class="center-block" id="vote_form" method="get" action="./vote.do"> 
					<h1>투표하기</h1>
						<h3>원하시는 후보를 선택해주세요</h3>
							<div class="select">
					            <div class="col-md-6 center-block">
					              <h3><b>후보 1</b></h3>
						            <label>
											<input class="radio center-block" type="radio" name="who" value="1">
											<span class="checkround"></span>
									</label>
					            </div>
					            <div class="col-md-6 center-block">
					              <h3><b>후보 2</b></h3>
					              <label>
													<input class="radio center-block" type="radio" name="who" value="2">
													<span class="checkround"></span>
											</label>
					            </div>
							</div>
							<div class="buttonBox">
									<%
										MemberDto memberdto = (MemberDto)session.getAttribute("memberdto");
										int gradenum = Integer.parseInt(memberdto.getId().substring(1, 7));
									%>
								<button onclick="vote('<%=gradenum%>');" class="btn cust-btn" type="button" id="votebtn" style="font-size: 20PX;letter-spacing: 1px; ">투표하기</button>
											
							</div>	
					</form>
						
			</div>
		</div>
		<div id="vote_finish" class="container">
			    <div class="center-block" style="text-align:center; ">
   						 <br/>
   						 <div><b>투표가 거의 완료 되었습니다.</b></div>
			    </div>
			    
			    <div class="result_text" style="text-align:center; padding-top:30px;">
			    	<b><h3 id="description" onclick="show_trx();"><</h3></b>
			    	<br/>
			    	<b><div id="tranx"></div></b>   	
			    </div>
		</div>
</body>
</html>

