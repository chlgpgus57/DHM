
$("#tripwith").click(function () {
	
	$("#mkp-left-tripwith").slideToggle("fast");//css("display","block");
	
});

$(".mkp-city-list").on("click",".mkp-trans-btn", function(e) {
	e.preventDefault();
	if ($(this).children("div").css("display") == "none") {
		$(".mkp-trans-picker").css("display","none");
		$(this).children("div").slideToggle("fast");
	}else{
		$(this).children("div").slideToggle("fast");
	}
} );

$(".mkp-city-list").on("click",".mkp-trans-sct", function() {
	$(this).parent().parent().children("font").html('<span class="mkp-trans-chos">'+$(this).text()+'</span>'+'<i class="fa fa-chevron-circle-down""></i>');
});

function selectTripImgs(a, b, twith) {
	$("#tripwith_img").prop("src","/imgs/tripwith/TW_"+a+"_"+b+".png");
	$("#tripwith_txt").text(twith);
	$("#mkp-left-tripwith").css("display","none");
	tripwith = 0;
}

$("#thedate").datepicker({

    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	dayNamesMin : ['일','월','화','수','목','금','토'],
	minDate : 1
});
$("#thedate").datepicker( "option", "dateFormat", "yy-mm-dd" );
var today = new Date().toISOString().substr(0, 10).replace('T', ' ');
$("#thedate").prop("value", today);
$("#thedate").prop("min", today);
$("#thedate").change(function() {
	today = $(this).val();
	uptDate();
});




$(".mkp-city-list").on("click",".ifm-info", function() {
	if ($(this).parent().prop("class")=="open-ifm") {		
		$(".open-ifm-sel").prop("class", "open-ifm");
		$(this).parent().prop("class","open-ifm-sel");
		$(".ifm-opener").css("display","none");
		$(this).next().slideToggle("fast");
	}else{
		$(".open-ifm-sel").prop("class", "open-ifm");
		$(".ifm-opener").css("display","none");
	}
	
});

$(".mkp-city-list").on("click",".ifm-closer", function() {
	$(this).parent().parent().parent().prop("class","open-ifm");
	$(this).parent().parent().css("display","none");
});


$(".mkp-city-list").on("click",".city-del", function() {
	if (confirm("일정을 취소하시겠습니까?")) {
		$(this).parent().parent().parent().parent().remove();
		var ti = $(".mkp-trans-info-ex").html();
		ti = '<div class="mkp-trans-info">'+ti+'</div>';
		setId();
		$(".mkp-trans-info").remove();
		for (var i = 1; i < count; i++) {
			if (i != 1 ) {
				$("#c"+i).before(ti);
			}
		}
	}
	
});

function setId() {
	var i = 1;
	$(".mkp-city-info").each(function() {
		$(this).prop("id", "c"+i);
		i++;
	});
	var ct = 1;
	$(".click-sleep").each(function() {
		$(this).prop("title","c"+ct);
		ct++;
	});
	count = i;
	uptDate();
}

$(".city-selOne").click(function() {
	$(".city-btn-info-sel").prop("class","city-btn-info");
	$(this).next().prop("class","city-btn-info-sel");
	$(".city-btn-info").slideUp("past");
	$(this).next().slideToggle("fast");
});

/////////도시추가 스크립트
var count = 1;
$(".mkp-ajax").click(function() {
	if (confirm("일정을 추가 하시겠습니까?")) {
		
		var cityName = $(this).parent().prev().val();
		var startDate = today;
		var cDay = new Date();
		var day = 1000*60*60*24*count;
		day = cDay.getTime() + day;
		cDay.setTime(day);
		cDay = new Date(cDay).toISOString().substr(0, 10).replace('T', ' ');
		var endDate = cDay;
		var arCode = $(this).parent().next().val();
		
		
		$.ajax({
			type : "GET",
			url		: "addPlanner",
			data	: {
				cityName : cityName,
				startDate : startDate,
				endDate	: endDate,
				count : count,
				arCode : arCode
				
			},
			success	: function(d) {
				$(".mkp-city-list").append(d);
				count++;
				uptDate();
			}
		});
	}
	
	
});



function uptDate() {
	var setDay = new Date(today);
	var setDay2 = new Date(today).toISOString().substr(0, 10).replace('T', ' ');
	for (var i = 1; i < count; i++) {
		$("#c"+i+" .sDate").text(setDay2);
		var bak = $("#c"+i+"  .nights-day").text()*1;
		if ($("#c"+i+"  .nights-day").text() == "무") {
			bak = 0;
		}
		setDay.setDate(setDay.getDate()+bak);
		var calDay = new Date(setDay).toISOString().substr(0, 10).replace('T', ' ');
		$("#c"+i+" .eDate").text(calDay);
		setDay2 = calDay;
	}
	
}



$("body").on("click",".click-sleep", function() {
	$(".chos-cityName").text($(this).prop("id"));
	$("#save-sleep").prop("title",$(this).prop("title"));
	$(".chos-sleep").css("display","block");
});

$(".chos-sleep-opt").click(function() {
	var id = "#"+$("#save-sleep").prop("title");
	$(id+" .nights-day").text($(this).prop("title"));
	$(".chos-sleep").css("display","none");
	uptDate();
});
	

function closeSleep() {
	$(".chos-sleep").css("display","none");
}

////////////////////////////////////////////////////////////


$(function() {
	$(".mkp-city-list").sortable({
		stop : function() {
				addTsel();
		}
	});
});




function addTsel() {
	var ti = $(".mkp-trans-info-ex").html();
	ti = '<div class="mkp-trans-info">'+ti+'</div>';
	setId();
	for (var i = 1; i < count; i++) {
		if (i == 1 ) {
			$("#c"+i).prev().remove();
		}else if(i == 2){
			$("#c"+i).prev().remove();
			$("#c"+i).before(ti);
		}
	}
}








/////////////////////////////////////////////////////





function openComplete() {
	$(".mkp-complete").slideDown("fast");
}

function closeComplete() {
	$(".mkp-complete").slideUp("fast");
}

var deDate = new Array();
var arDate = new Array();
var bak = new Array();
var region = new Array();
var transfer = new Array();

$(".mkp-clp-btn").click(function() {
	
	jQuery.ajaxSettings.traditional = true;

	
	if (confirm("저장하시겠습니까?")) {
		var id = $("#member-id").val();
		var title=$("#mkp-title").val();
		var type=$("#tripwith_txt").text();
		var people=$("#mkp-people").val();
		for (var i = 0; i < count-1; i++) {
			console.log($(".sDate")[i].innerText);
			deDate.push($(".sDate")[i].innerText);
			arDate.push($(".eDate")[i].innerText);
			bak.push($(".nights-day")[i].innerText);
			region.push($(".city-sel-name")[i].innerText);
			if (i < count-2) {
				console.log($(".mkp-trans-chos")[i].innerText.trim());
				transfer.push($(".mkp-trans-chos")[i].innerText.trim());
			}
		}
		$.ajax({
			type	: "POST",
			url		: "makePlanner",
			data	: {
				id 		: id,
				title 	: title,
				type	: type,
				people	: people,
				deDate	: deDate,
				arDate	: arDate,
				bak		: bak,
				region	: region,
				transfer	: transfer
			},
			success	: function(d) {
					alert("저장돼었습니다.");
					location.href = "scheduel/schdulePage?plNum="+d;
				}
			
			
		});
	}
});






























