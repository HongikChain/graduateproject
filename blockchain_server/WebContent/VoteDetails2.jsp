<%@page import="com.blockchain.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <link rel="stylesheet" href="Resources/css/votepage_Details2.css?ver=1.1">
  <title>Document</title>
</head>
<script>
</script>
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
    <li id="contents1"> <h1>제 24회 컴퓨터공학과 임원 선출 ㅁㄴㅇㄻㄴㅇㄹ</h1> </li>
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
  <div class="do_vote" >
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
   
</div>
	<div class="row text-center" style="margin-bottom:30px;">
				<form id="vote_form" method="get" action="./vote.do"> 
					<h1>투표하기</h1>
						<h3>원하시는 후보를 선택해주세요</h3>
							<div class="select">
					            <div class="col-md-4">
					              <h3><b>후보 1</b></h3>
						            <label class="radio">
											<input type="radio" name="who" value="1">
											<span class="checkround"></span>
									</label>
					            </div>
					            <div class="col-md-4">
					              <h3><b>후보 2</b></h3>
					              <label class="radio">
													<input type="radio" name="who" value="2">
													<span class="checkround"></span>
												</label>
					            </div>
							</div>
							<div class="buttonBox">
									<%
										MemberDto memberdto = (MemberDto)session.getAttribute("memberdto");
										int gradenum = Integer.parseInt(memberdto.getId().substring(1, 7));
									%>
								<button onclick="vote('<%=gradenum%>');" class="btn cust-btn" type="button" id="votebtn" style="font-size: 20PX;letter-spacing: 1px;">투표하기</button>			
							</div>	
					</form>
						
			</div>
</body>
