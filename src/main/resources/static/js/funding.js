//update
var startTime = '${vo.startTime}';
	var start = startTime.substring(0, 10);
	var time1 = startTime.substring(11, 19);

	var endTime = '${vo.endTime}';
	var end = endTime.substring(0, 10);
	var time2 = endTime.substring(11, 19);

	document.getElementById('start').value = start;
	document.getElementById('time1').value = time1;
	document.getElementById('end').value = end;
	document.getElementById('time2').value = time2;

	
	
	$("#re").click(function(){
		location.href= "./fundingSelect?num=${vo.num}";
		});

	$("#write").click(function() {
		if($("#name").val() == ""){
			alert("펀딩의 이름을 입력해주세요.");
			$("#name").focus();
		} else if($("#contents").val() == ""){
			alert("펀딩의 내용을 입력해주세요.");
			$("#contents").focus();
		} else if($("#price").val() == ""){
			alert("펀딩의 금액을 입력해주세요.");
			$("#price").focus();
		} else if($("#goal").val() == ""){
			alert("펀딩의 목표 금액을 입력해주세요.");
			$("#goal").focus();
		} else if($("#start").val() == ""){
			alert("여행의 시작 날짜를 선택해주세요.");
			$("#start").focus();
		} else if($("#time1").val() == ""){
			alert("여행의 시작 시간을 선택해주세요.");
			$("#time1").focus();
		} else if($("#end").val() == ""){
			alert("여행의 마침 날짜를 선택해주세요.");
			$("#end").focus();
		} else if($("#time2").val() == ""){
			alert("여행의 마침 시간을 선택해주세요.");
			$("#time2").focus();
		} else if($("#people").val() == "" || $("#people").val() == "0"){
			alert("펀딩의 최대 참여 인원을 입력해주세요.");
			$("#people").focus();
		} else {
			$("#frm").submit();
		}
	});