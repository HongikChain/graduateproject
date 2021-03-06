/*
var web3 = new Web3();
var provider = new web3.providers.HttpProvider("http://192.168.56.1:8545");
web3.setProvider(provider);
web3.eth.defaultAccount = web3.eth.accounts[0];
var stop = false;

//var startBlockNo = web3.eth.blockNumber;
var result = web3.eth.getBlock(953);
var trans = null;
*/
$(document).ready(function(){
		 web3 = new Web3(new Web3.providers.HttpProvider("http://192.168.56.1:8545"));
		 web3.eth.defaultAccount = web3.eth.accounts[1];
});

function getVoteRate(transhash){
	
	var candidate1 = web3.eth.accounts[13];
	var candidate2 = web3.eth.accounts[14];
	var candidate3 = web3.eth.accounts[15];

	var ether1 = web3.fromWei(web3.eth.getBalance(candidate1));
	var ether2 = web3.fromWei(web3.eth.getBalance(candidate2));
	var ether3 = web3.fromWei(web3.eth.getBalance(candidate3));
	ether1 = parseInt(ether1);
	ether2 = parseInt(ether2);
	ether3 = parseInt(ether3);
	var voterate1 = document.getElementById('voterate1');
	var voterate2 = document.getElementById('voterate2');
	var voterate3 = document.getElementById('voterate3');
	voterate1.innerHTML = "<p>후보1 득표수 : "+ether1+"</p>";
	voterate2.innerHTML = "<p>후보2 득표수 : "+ether2+"</p>";
	voterate3.innerHTML = "<p>후보3 득표수 : "+ether3+"</p>";
	
	
	
	
	
	//3초마다 득표수 업데이트.
	setInterval(function(){
		
		var ether1 = web3.fromWei(web3.eth.getBalance(candidate1));
		var ether2 = web3.fromWei(web3.eth.getBalance(candidate2));
		var ether3 = web3.fromWei(web3.eth.getBalance(candidate3));
		ether1 = parseInt(ether1);
		ether2 = parseInt(ether2);
		ether3 = parseInt(ether3);
		var transaction = web3.eth.getTransaction(transhash);
		var voterate1 = document.getElementById('voterate1');
		var voterate2 = document.getElementById('voterate2');
		var voterate3 = document.getElementById('voterate3');
		var result = web3.eth.getBlock(transaction.blockNumber);
		voterate1.innerHTML = "<p>후보1 득표수 : "+ether1+"</p>";
		voterate2.innerHTML = "<p>후보2 득표수 : "+ether2+"</p>";
		voterate3.innerHTML = "<p>후보3 득표수 : "+ether3+"</p>";
		document.getElementById("description").innerHTML = "현재 트랜잭션이 포함된 블록 헤더 정보";
		document.getElementById("blocknumber").innerHTML = "<p>블록 넘버 : "+result.number+"</p>";
		document.getElementById("timestamp").innerHTML = "<p>타임스탬프 : "+result.timestamp+"</p>";
		document.getElementById("hash").innerHTML = "<p>블록 해쉬값 : "+result.hash+"</p>";
		document.getElementById("nonce").innerHTML = "<p>넌스 : "+result.nonce+"</p>";	
	  	document.getElementById("transaction").innerHTML = "<p>트랜잭션 해쉬값 : "+transhash+"</p>";
	}, 3000);

}

function doVote(account,password){
	//account는 현재 로그인한 사용자의 이더리움 계정
	var radio = document.getElementsByName('who');
	var voteform = document.getElementById('vote_form');
	var votefinish = document.getElementById('vote_finish');
	var radio_value;
	var value = web3.toWei('1', 'ether');
	
	for(var i=0; i<radio.length; i++) {
	    if(radio[i].checked) {
	        radio_value = radio[i].value;
	    }
	}
	
	//투표하기 화면 전환
	alert("소중한 한 표 감사드립니다.");
	voteform.style.display="none";
	votefinish.style.display = "block";
	web3.personal.unlockAccount(account, password, 0);
	var transhash;
	if(radio_value == 1){
		//account -> 1번 후보에게 이더 전송
		transhash = web3.eth.sendTransaction({
			from : account,
			to : web3.eth.accounts[13],
			value : value
		});
	}else if(radio_value == 2){
		//account -> 2번 후보
		transhash = web3.eth.sendTransaction({
			from : account,
			to : web3.eth.accounts[14],
			value : value
		});
	}else if(radio_value == 3){
		//account -> 3번 후보
		transhash = web3.eth.sendTransaction({
			from : account,
			to : web3.eth.accounts[15],
			value : value
		});
	}
	
	getVoteRate(transhash);
	
}

function makeAccount(){
	var id = document.getElementById('id').value; 
	var password = document.getElementById('password').value;
	var name = document.getElementById('name').value;
	var major = document.getElementById('major').value;
	var grade = document.getElementById('grade').value;
	var phone = document.getElementById('phone').value;
	var account = web3.personal.newAccount(password); //newacc는 계정 아이디
	var coinbase = web3.eth.accounts[1];
	var value = web3.toWei('1.01', 'ether');
	
	
	//이더리움 계정생성하자마자 돈 넣어주기. 
	web3.eth.sendTransaction({
		from : coinbase,
		to : account,
		value : value
	});
	
	//폼 태그에 이더리움 계정 추가
	var formtag = document.getElementById('register-form');
	var newinput = document.createElement('input');
	newinput.type = "hidden"; newinput.name = "account"; newinput.value = account;
	formtag.appendChild(newinput);
	
	formtag.submit();
}

// 감시 개시
function startMonitor() {
	stop = false;
	//20건 전 블록부터 참조
	var startBlockNo = web3.eth.blockNumber - 20;
	var table = document.getElementById('list');
	var i = startBlockNo;
	for (; i < web3.eth.blockNumber; i++) {
		var result = web3.eth.getBlock(i);
		insertBlockRow(result, table, i);
	}
	setTimeout(function() {
	watchBlock(table, i);
	}, 10000);
}

// 블록 감시
function watchBlock(table, blockNumber) {
	if (stop) {
		return;
	}
	if (blockNumber == web3.eth.blockNumber) {
		setTimeout(function() {
		watchBlock(table, blockNumber);
		}, 10000);
	return;
	}
	var result = web3.eth.getBlock(blockNumber);
	insertBlockRow(result, table, blockNumber);
	setTimeout(function() {
	watchBlock(table, ++blockNumber);
	}, 10000);
}

// 행 추가 블록 정보 편집
function insertBlockRow(result, table) {
	var row = table.insertRow();
	var td = row.insertCell(0);
	td.innerHTML = result.number;
	var td = row.insertCell(1);
	td.innerHTML = new Date(parseInt(result.timestamp, 16) * 1000).toString();
	var td = row.insertCell(2);
	td.innerHTML = result.hash;
	var td = row.insertCell(3);
	td.innerHTML = result.nonce;
	var td = row.insertCell(4);
	if (result.transactions.length > 0) {
	insertTranRow(result.transactions, td);
	}
}

// 행 추가 트랜잭션 정보 편집
function insertTranRow(transactions, td) {
	var allData = "";
	for (var i = 0; i < transactions.length; i++) {
		var data = web3.eth.getTransaction(transactions[i]);
		allData += JSON.stringify(data);
	}
	td.innerHTML = "<input type='text' value='" + allData + "' /></td>";
}

// 정지
function stopWatch() {
	document.getElementById("blocknumber").innerHTML = result.number;
	document.getElementById("timestamp").innerHTML = result.timestamp;
	document.getElementById("hash").innerHTML = result.hash;
	document.getElementById("nonce").innerHTML = result.nonce;	
  	document.getElementById("transaction").innerHTML =result.transactions;
}

function maketran(){
	trans = web3.eth.sendTransaction({from:web3.eth.accounts[2],to:web3.eth.accounts[1],value:web3.toWei(1,"ether")});   
}


