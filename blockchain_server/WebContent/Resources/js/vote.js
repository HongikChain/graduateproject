var url;
function checkradio(){
	  var radio_btn = document.getElementsByName("who");
      //라디오 버튼이 체크되었나 확인하기 위한 변수
      var radio_btn_check = 0;
      for(var i = 0; i<radio_btn.length; i++){
          //만약 라디오 버튼이 체크가 되어있다면 true
          if(radio_btn[i].checked==true){
              //라디오 버튼이 체크되면 radio_btn_check를 1로 만들어준다.
              return i;
          }
      }
      alert("후보를 선택해주세요.");
      return -1;
}

function showresult(){
	var btn = document.getElementById('votebtn');
	btn.style.display = 'none';
	var con = document.getElementById('vote_finish');    
	if(con.style.display=='none'){
        con.style.display = 'block';
    }else{
        con.style.display = 'none';
    }
}

function show_trx(){
	location.href=url;
}

function getAllCount(contract){
	var sum = 0;
	for(var i=0; i<3; i++){
		sum += contract.getCount(i).toNumber();
	}
	return sum;
}

function vote(voter){
	showresult();
	var candidate = checkradio();
	if(candidate == -1) return;
	var web3;
    // Is there is an injected web3 instance?
	if (typeof web3 !== 'undefined')
		web3 = new Web3(web3.currentProvider)
	else 
		web3 = new Web3(new Web3.providers.HttpProvider('https://ropsten.infura.io/v3/76641cf63af047b0a65aa81393d35010'))
	var abi = [
		{
			"constant": false,
			"inputs": [
				{
					"name": "voter",
					"type": "uint256"
				},
				{
					"name": "candidate",
					"type": "uint256"
				}
			],
			"name": "vote",
			"outputs": [],
			"payable": false,
			"stateMutability": "nonpayable",
			"type": "function"
		},
		{
			"inputs": [],
			"payable": false,
			"stateMutability": "nonpayable",
			"type": "constructor"
		},
		{
			"anonymous": false,
			"inputs": [
				{
					"indexed": false,
					"name": "voter",
					"type": "uint256"
				}
			],
			"name": "cancelVote",
			"type": "event"
		},
		{
			"constant": true,
			"inputs": [
				{
					"name": "candidate",
					"type": "uint256"
				}
			],
			"name": "getCount",
			"outputs": [
				{
					"name": "",
					"type": "uint256"
				}
			],
			"payable": false,
			"stateMutability": "view",
			"type": "function"
		}
	]
	const addr = '0x6e73712a9a83aa4f2b23e7fc0929c2418d10dcf2'
	const contract_addr = '0x53f54369e847bae7863360d59a1affb24afb1ef5'
	var contract = web3.eth.contract(abi).at(contract_addr);
	var balance = web3.fromWei(web3.eth.getBalance(addr),'ether');
	const privateKey = '39B0E8F84A8C94C3E8ACD58F6F78CCA423552AA9E38A85789207365D59B53BBA';
	var data = contract.vote.getData(voter,candidate); //실행 시킬 함수
	var description = document.getElementById('description');
	var trans_des = 		
	web3.eth.getTransactionCount(addr, function (err, nonce) {
		var tx = new ethereumjs.Tx({
		      nonce: nonce,
		      gasPrice: web3.toHex(web3.toWei('20', 'gwei')),
		      gasLimit: 100000,
		      to: contract_addr,
		      value: 0,
		      data: data,
		    });
			
		    tx.sign(ethereumjs.Buffer.Buffer.from(privateKey, 'hex'));
		    var raw = '0x' + tx.serialize().toString('hex');
		    
		    web3.eth.sendRawTransaction(raw, function (err, transactionHash) {
		    	console.log(transactionHash);
		    	url = "https://ropsten.etherscan.io/tx/"+transactionHash;
		    	description.innerHTML = "이더스캔에서 트랜잭션 확인하기";
		    
		    	setInterval( () => {
			    	web3.eth.getTransactionReceipt(transactionHash,function(e,value){
			    		if(value == "" || value == null || value == undefined || ( value != null && typeof value == "object" && !Object.keys(value).length))
			    		{
			    			document.getElementById('tranx').innerHTML = "트랜잭션이 아직 펜딩중입니다.";
			    			console.log("트랜잭션 펜딩중");
			    		}else{
			    			console.log("트랜잭션 블록 포함");
			    			document.getElementById('tranx').innerHTML =
			    				"트랜잭션이 성공적으로 블록에 포함 되었습니다.<br/>"+
			    				"<br/>블록 해쉬값 : " + value.blockHash +
			    				"<br/>블록 번호 : " + value.blockNumber +
			    				"<br/>총 가스 사용량 : " + value.cumulativeGasUsed +
			    				"<br/>트랜잭션 해쉬값 : " + value.transactionHash +
			    				"<br/>총 투표 참여자 수 : " + getAllCount(contract) +
			    				"<br/>투표율 : " + (getAllCount(contract)/294 * 100).toFixed(1) +"%"; 
			    		}
			    	});
			    }, 1000);
		    	
		    });		   
		    
		   
	});  
	
}