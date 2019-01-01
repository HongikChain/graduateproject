<%@page import="com.blockchain.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="./Resources/css/votelist.css">
	  <script type="text/javascript">
		 function check(){
			  <%
		  			boolean check = false;
					MemberDto memberdto = (MemberDto)session.getAttribute("memberdto");
					if(memberdto == null){
						check = true;
					}
			  %>
			  if(<%=check%>){
				  alert("먼저 로그인을 해주세요.");
				  window.location.href = "http://localhost:8181/blockchain_server/LoginPage.jsp";
			  }
		 }
		 window.onload = check();
		</script>

  <link href="https://fonts.googleapis.com/css?family=Nanum+Myeongjo" rel="stylesheet">

</head>
<body>
  <!--<div class="nav">
    <div class="nav_logo">
      <p>홍익전자선관위</p>
    </div>
    <div class="nav_about">
      <p>ABOUT</p>
    </div>
    <div class="nav_logout">
      <p>LOGOUT</p>
    </div>
  </div>-->
  <h2 class="index">소중한 한 표 꼭 행사하세요:)</h2>
<div class="container_all">
  <div class="container">
    <div class="vote">
      <div class="vote_img">
        <img src="https://images.unsplash.com/photo-1506499984411-860f50ae4acb?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=ce35f99ae55ca4fbe7fa016109dcfca9&auto=format&fit=crop&w=1400&q=80" alt="">
      </div>
      <div class="vote_content">
        <h3>제 27회 건축대학 임원 선출</h3>
        <p>내용은 어떤 것이 들어가는 것이 좋을까</p>
      </div>
      <div class="vote_button">
  		<a href="./VoteDetails.jsp">
        	<button>투표하러 가기</button>
        </a>
      </div>
    </div>
    
    <div class="vote">
      <div class="vote_img">
        <img src="https://images.unsplash.com/photo-1493528237448-144452699e16?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=69926ae80d4ccd357b248ac18ade686b&auto=format&fit=crop&w=800&q=60" alt="">
      </div>
      <div class="vote_content">
        <h3>자연과학대학 설립 찬반</h3>
        <p>만들어내라, 홍익대학교야.</p>
      </div>
      <div class="vote_button">
      <a href="./VoteDetails.jsp">
        <button>투표하러 가기</button>
        </a>
      </div>
    </div>
    
    <div class="vote">
      <div class="vote_img">
        <img src="https://images.unsplash.com/photo-1512075135822-67cdd9dd7314?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=18d626931a8030b4587fbc6cef3098c2&auto=format&fit=crop&w=800&q=60" alt="">
      </div>
      <div class="vote_content">
        <h3>적립금은 계속 모으는 게 좋다?</h3>
        <p>지금 있는 적립금만 1조 가까이 되는데 언제까지 모을껀가</p>
      </div>
      <div class="vote_button">
      <a href="./VoteDetails.jsp">
        <button>투표하러 가기</button>
        </a>
      </div>
    </div>
  </div>
  
  <div class="container">
    <div class="vote">
      <div class="vote_img">
        <img src="https://images.unsplash.com/photo-1517694712202-14dd9538aa97?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a20bc6324f6ef2969d9a7cae56b8d4d1&auto=format&fit=crop&w=800&q=60" alt="">
      </div>
      <div class="vote_content">
        <h3>제 27회 컴퓨터공학과 임원 선출</h3>
        <p>일단 공약으로 MAC-BOOK 200대 구비</p>
      </div>
      <div class="vote_button">
      <a href="./VoteDetails.jsp">
        <button>투표하러 가기</button>
        </a>
      </div>
    </div>
    
    <div class="vote">
      <div class="vote_img">
        <img src="https://images.unsplash.com/photo-1494847169657-b5c02877b489?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=53cd5fb69fbd43e22f10be2334291637&auto=format&fit=crop&w=800&q=60" alt="">
      </div>
      <div class="vote_content">
        <h3>T동 책걸상 교체 찬반</h3>
        <p>합체 로봇 마냥 왜 꼭 책걸상이 붙어 있어야하는 걸까</p>
      </div>
      <div class="vote_button">
      <a href="./VoteDetails.jsp">
        <button>투표하러 가기</button>
        </a>
      </div>
    </div>
    
    <div class="vote">
      <div class="vote_img">
        <img src="https://images.unsplash.com/photo-1512075135822-67cdd9dd7314?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=18d626931a8030b4587fbc6cef3098c2&auto=format&fit=crop&w=800&q=60" alt="">
      </div>
      <div class="vote_content">
        <h3>적립금은 계속 모으는 게 좋다?</h3>
        <p>지금 있는 적립금만 1조 가까이 되는데 언제까지 모을껀가</p>
      </div>
      <div class="vote_button">
      <a href="./VoteDetails.jsp">
        <button>투표하러 가기</button>
        </a>
      </div>
    </div>
    
  </div>
</div>

</body>
</html>
