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
  	<link rel="stylesheet" href="./Resources/css/votepage_Details.css?ver=1">
  	<script src="./Resources/js/custom_web3.js"></script>
  	
			
	<script type="text/javascript">
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
	<div class="nav-bar">
		<div>
			<h1>홍익대학교 제 77대 공과대학과장 선거</h1>
		</div>
	</div>
	<div class="container">
		<div class="candidate">
			<div class="center-block">
				<figure class="snip0057 red">
				  <figcaption>
				    <h2>기호 1번 <span>심재철</span></h2>
				    <p>후보소개</p>
						<div class="icons-text"><p id="detail_text1">공약보기</p></div>
					</figcaption>
				  <div class="image"><img src="./Resources/img/jaecheol.jpg" alt="sample4"/></div>
				  <div class="position">컴퓨터공학과 12학번</div>
				</figure>
			</div>
		</div>
		<div class="candidate">
			<div class="center-block">
				<figure class="snip0057 blue">
				  <figcaption>
				    <h2>기호 2번 <span>권영진</span></h2>
				    <p>후보 소개</p>
				    <div class="icons-text"><p id="detail_text2">공약보기</p></div>
				  </figcaption>
				  <div class="image"><img src="./Resources/img/youngjin.jpg" alt="sample3"/></div>
				  <div class="position">컴퓨터공학과 12학번</div>
				</figure>
			</div>
		</div>
		<div class="candidate">
			<div class="center-block">
				<figure class="snip0057 green">
				  <figcaption>
				    <h2>기호 3번 <span>손교은</span></h2>
				    <p>후보 소개</p>
				    <div class="icons-text"><p id="detail_text3">공약보기</p></div>
				  </figcaption>
				  <div class="image"><img src="./Resources/img/kyoeun.jpg" alt="sample3"/></div>
				  <div class="position">컴퓨터공학과 12학번</div>
				</figure>
			</div>
		</div>
	</div>

	<div class="tab_box">
		<ul id="tab_contents">
			<li id="contents_default">
				<div class="content_detail">
					후보자의 사진에 마우스를 올리면 자세한 공약을 보실 수 있는 버튼이 있습니다.<br>
					꼭 공약을 확인하시고, 투표에 참여해주세요:)
				</div>
			</li>
			<li id="contents1">
				<div>
					<h2>기호 1번 심재철</h2>
					<br>
					<h3>공약 1: 쓰레기통을 설치하겠습니다.</h3>
					<p>알 수 없는 일들이 너무 많이 일어나고 있습니다. 여러분, 모두 힘을 합칩시다.</p>
					<p>분리수거를 잘 할 수 있도록, 담배꽁초를 잘 버릴 수 있도록!</p>
					<h3>공약 2: T동 리모델링을 추진하겠습니다.</h3>
					<p>T동 창문 그만 바꾸고, 분리형 책걸상과 쾌적한 열람실을 증축하겠습니다. 진짜로요.</p>
					<h3>공약 3: 국어 교육에 힘쓰겠습니다.</h3>
					<p>얄리얄리얄라셩. 얄라리얄루. 무는 유이고, 유는 무이니라. 모든 것은 속세와 나의 싸움이다.</p>
				</div>
			</li>
			<li id="contents2">
					<div>
							<h2>기호 2번 권영진</h2>
							<br>
							<h3>공약 1: 에어컨을 한 강의실에 두 개씩 설치하겠습니다.</h3>
							<p>알 수 없는 일들이 너무 많이 일어나고 있습니다. 여러분, 모두 힘을 합칩시다.</p>
							<p>분리수거를 잘 할 수 있도록, 담배꽁초를 잘 버릴 수 있도록!</p>
							<h3>공약 2: K동 리모델링을 추진하겠습니다.</h3>
							<p>K동 창문 그만 바꾸고, 분리형 책걸상과 쾌적한 열람실을 증축하겠습니다. 진짜로요.</p>
							<h3>공약 3: 화학 교육에 힘쓰겠습니다.</h3>
							<p>얄리얄리얄라셩. 얄라리얄루. 무는 유이고, 유는 무이니라. 모든 것은 속세와 나의 싸움이다.</p>
						</div>
			</li>
			<li id="contents3">
					<div>
							<h2>기호 3번 손교은</h2>
							<br>
							<h3>공약 1: 그만 설치하겠습니다.</h3>
							<p>알 수 없는 일들이 너무 많이 일어나고 있습니다. 여러분, 모두 힘을 합칩시다.</p>
							<p>분리수거를 잘 할 수 있도록, 담배꽁초를 잘 버릴 수 있도록!</p>
							<h3>공약 2: Q동 리모델링을 추진하겠습니다.</h3>
							<p>T동 창문 그만 바꾸고, 분리형 책걸상과 쾌적한 열람실을 증축하겠습니다. 진짜로요.</p>
							<h3>공약 3: 디자인 교육에 힘쓰겠습니다.</h3>
							<p>얄리얄리얄라셩. 얄라리얄루. 무는 유이고, 유는 무이니라. 모든 것은 속세와 나의 싸움이다.</p>
						</div>
			</li>
		</ul>
	</div>
		 	  
	<div class="stepz">
		<h3>
		   투표 시 주의 사항
		</h3>
		<ol>
		  <li>
		     해당 후보에게 투표한 정보는 블록체인에 저장됩니다.
		  </li>
		  <li>
		     자신의 투표지가 블록체인 상에서 어떤 블록에 포함되었는지 확인 할 수 있습니다. 
		  </li>
		  <li>
		     한번 투표 하면 되돌리기가 불가능하오니, 신중하게 투표해주세요.
		  </li>
		</ol>
	</div>
	<div id="vote" class="container center-block">
		<div class="row text-center">
			<form id="vote_form" method="get" action="./vote.do"> 
				<h1>투표하기</h2>
					<h3>원하시는 후보를 선택해주세요</h3>
						<div class="select">
			            <div class="col-md-4">
			              <img src="./Resources/img/jaecheol.jpg" class="img-circle" alt="image" style="height:200px; width:200px;"/>
			              <h3><b>후보 1</b></h3>
				            <label class="radio">
											<input type="radio" name="who" value="1">
											<span class="checkround"></span>
										</label>
			            </div>
			            <div class="col-md-4">
			              <img src="./Resources/img/youngjin.jpg" class="img-circle" alt="image" style="height:200px; width:200px;"/>
			              <h3><b>후보 2</b></h3>
			              <label class="radio">
											<input type="radio" name="who" value="2">
											<span class="checkround"></span>
										</label>
			            </div>
			            <div class="col-md-4">
			              <img src="./Resources/img/kyoeun.jpg" class="img-circle" alt="image" style="height:200px; width:200px;"/>
			              <h3><b>후보 3</b></h3>
			              <label class="radio">
											<input type="radio" name="who" value="3">
											<span class="checkround"></span>
										</label>
									</div>
								</div>
								<div class="buttonBox">
										<%
											MemberDto memberdto = (MemberDto)session.getAttribute("memberdto");
											String account="";
											String password="";
											if(memberdto!=null){
												account = memberdto.getAccount();
												password = memberdto.getPassword();
											}
										%>
									<button onclick="doVote('<%=account%>','<%=password%>')" class="btn cust-btn" type="button" id="votebtn" style="font-size: 20PX;letter-spacing: 1px;">투표하기</button>
										
								</div>	
						</form>
					</div>

			<div id="vote_finish" class="container">
		    <div class="center-block" style="text-align:center; ">
		    		<h2>전체 투표율</h2>
		            <div class="progress blue">
		                <span class="progress-left">
		                    <span class="progress-bar"></span>
		                </span>
		                <span class="progress-right">
		                    <span class="progress-bar"></span>
		                </span>
		                <div class="progress-value">85%</div>
		            </div>
		    </div>
		    
		    <div class="result_text" style="text-align:center; padding-top:30px;">
		    	<h3 id="voterate1"></h3>
		    	<h3 id="voterate2"></h3>
		    	<h3 id="voterate3"></h3>
		    </div>
		   	
		</div>
	</div>
</body>
</html>

