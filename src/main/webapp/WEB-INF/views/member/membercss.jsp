<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* 공용 css *********************************************************************/
/* a테그 이벤트 삭제 */
a{
	text-decoration: none;
	color: white;
}
/* 호버 이벤트 삭제 */
a:hover{
	text-decoration: none;
	font-weight: normal;
}

*{
	margin: 0;
	padding: 0;
	list-style: none;
}

/* 공용 css *********************************************************************/





/* 예시  header , footer  start*********************************************************************/

.header{
height: 136px;
width: 100%;
background-color: #95a5a6;
}

.footer{
height: 260px;
width: 100%;
background-color: #95a5a6;
}

/* 예시  header, footer  end   *********************************************************************/

/* MemberLogin Page Css Start *********************************************************************/
.mainbox{
background-color: white;
height: 600px;
width: 1885px;
}

.container1{
height: 100px;
}

.loginbox{
width: 553px;
height: 505px;
position:absolute; 
left: 675px;
background-color: white;
}

.Login1{
width: 553px;
height: 47px;
border: 1px solid rgba(0,0,0,.1);
}

.Login2{
width: 553px;
height: 125px;
border-left: 1px solid rgba(0,0,0,.1);
border-right: 1px solid rgba(0,0,0,.1);
border-bottom: 1px solid rgba(0,0,0,.1);
}

.Login3{
width: 553px;
height: 26px;
}

.Login4{
width: 553px;
height: 47px;
border: 1px solid rgba(0,0,0,.1);
}

.Login5{
width: 553px;
height: 215px;
border-left: 1px solid rgba(0,0,0,.1);
border-right:1px solid rgba(0,0,0,.1);
}

.Login6{
width: 553px;
height: 45px;
border: 1px solid rgba(0,0,0,.1);
}

.Login1-1{
width: 493px;
height: 31px;
padding: 8px 30px;
text-align: center;
color: inherit;
display: block;
font-size: 18.5px;
font-weight: 400;
color: gray;
}

.login2img{
margin-left: 30px;
margin-top: 25px;
}

.login5-1{
width: 100px;
height: 215px;
float: left;
}

.login5-1-1{
width: 60px;
height: 30px;
font-size: 13px;
padding-top: 32px;
padding-left: 28px;
color: gray;

}

.login5-1-2{
width: 60px;
height: 30px;
padding-top: 32px;
padding-left: 28px;
font-size: 13px;
color: gray;
}

.login5-2{
width: 450px;
height: 215px;
background-color: white;
float: right;
}

.login5-2-1{
height: 25px;
width: 280px;
color: gray;
}

.login5-2-2{
height: 25px;
width: 280px;
}

.lgon5-3{
padding-top: 27px;
padding-left: 100px;
}

.lgon5-4{
padding-top: 27px;
padding-left: 100px;
}

#login5-5{
padding-top: 7px;
padding-left: 100px;
font-size: 12px;
text-decoration: underline;
color: #8f8f8f;
font: 13px/1.55 'Open Sans', Helvetica, Arial, sans-serif;
text-decoration: none;
color: black;
}

.checkbox{
font: normal 10px FontAwesome;
color: #333;
border-color: #bbb;
border-width: 1px;
width: 100%;
height: 40px;
background: none;
box-shadow: none;
}

.col-8{
font: 13px/1.55 'Open Sans', Helvetica, Arial, sans-serif;
padding-left: 95px;
padding-top: 20px;
}

.btn1{
position: relative;
background: #72c02c;
white-space: nowrap;
display: inline-block;
text-decoration: none;
cursor: pointer;
font-weight: 400;
color: #fff;
font-size: 18px;
padding: 11px 25px;
text-align: center;
margin-left: 170px;
}

.btn2{
float: right;
-webkit-tap-highlight-color: rgba(0,0,0,0);
font: 13px/1.55 'Open Sans', Helvetica, Arial, sans-serif;
text-align: center;
border-radius: 0 !important;
margin: 0;
box-sizing: border-box;
letter-spacing: -1px;
line-height: 1.4;
font-family: 'NanumGothic';
border: 0;
cursor: pointer;
font-weight: 400;
position: relative;
white-space: nowrap;
display: inline-block;
outline: 0 !important;
font-size: 18px;
padding: 10px 25px;
text-decoration: none;
transition: all 0.3s ease-in-out;
color: #fff;
background: #7f8c8d;
margin-right: 162px;
background-color: 95a5a6;
}

.Login7{
margin-left: 394px;
}

/* MemberLogin Page Css End *********************************************************************/

/* MemberJoin Page Css Start ********************************************************************/

.Joinmain{
height: 1030px;
width: 1903px;
background-color: white;
}

.JoinMainPage{
height: 965px;
width: 555px;
background-color: white;
position:absolute; 
left: 675px;
margin-top: 17px;
}

.Join1{
height: 45px;
width: 553px;
background-color: white;
border-top: 1px solid rgba(0,0,0,.1);
border-left: 1px solid rgba(0,0,0,.1);
border-right: 1px solid rgba(0,0,0,.1);
border-bottom: 1px solid rgba(0,0,0,.1);
}

.Join1-1{
text-align: center;
font: 13px/1.55 'Open Sans', Helvetica, Arial, sans-serif;
font-family: 'NanumGothic';
color: #666;
display: block;
font-size: 20px;
font-weight: 400;
padding-top: 7px;
}

.Join2{
height: 153px;
width: 553px;
background-color: white;
border-left: 1px solid rgba(0,0,0,.1);
border-right: 1px solid rgba(0,0,0,.1);
border-bottom: 1px solid rgba(0,0,0,.1);
}

.Join2img{
padding-left: 30px;
padding-top: 25px;
}

.Join3{
height: 78px;
width: 553px;
background-color: white;
border-left: 1px solid rgba(0,0,0,.1);
border-right: 1px solid rgba(0,0,0,.1);
border-bottom: 1px solid rgba(0,0,0,.1);
}

.Join3-1{
text-align: center;
font: 13px/1.55 'Open Sans', Helvetica, Arial, sans-serif;
font-family: 'NanumGothic';
color: #666;
display: block;
font-size: 20px;
font-weight: 400;
padding-top: 20px;
}

.Join4{
height: 600px;
width: 553px;
padding-top: 20px;
background-color: white;
border-right: 1px solid rgba(0,0,0,.1);
border-left: 1px solid rgba(0,0,0,.1);
}

.Join4-1-a{
height: 50px;
}

.Join4-1-b{
margin-top:5px;
height: 50px;
}



.Join4-1-1{
width: 150px;
font-size: 13px;
color: gray;
padding-left: 30px;
padding-top: 15px;
float: left;
}

.Join4-1-2{
width: 150px;
font-size: 13px;
color: gray;
padding-left: 30px;
padding-top: 5px;
float: left;
}



.Join-text{
float: left;
margin-top: 10px;
margin-left: 30px;
}

.Join4-2{
width: 273px;
height: 27px;
}

.Join4-3{
width: 192px;
height: 27px;
}

.Join4-4{
width: 192px;
height: 27px;
}

/* 중복확인  버튼 css */
.input-group-btn {
position: relative;
font-size: 0;
white-space: nowrap;
width: 1%;
white-space: nowrap;
vertical-align: middle;
display: table-cell;
}

.btn-u{
background: #e74c3c;
border: 0;
color: #fff;
font-size: 14px;
cursor: pointer;
font-weight: 400;
padding: 6px 13px;
position: relative;
background: #e74c3c;
white-space: nowrap;
display: inline-block;
text-decoration: none;
margin-top: 10px;
width: 80px;
}

button{
outline: 0 !important;
line-height: inherit;
-webkit-appearance: button;
text-transform: none;
overflow: visible;
margin: 0;
font: inherit;
}
/* 중복확인  버튼 css */

.Join4-select{
width: 120px;
height: 30px;
}

.Join4-birth1{
width: 120px;
height: 30px;
}

.Join4-birth2{
width: 120px;
height: 30px;
}


.Join4-check{
padding-top: 15px;
padding-left: 25px;
}

.Join4or5-1{
-webkit-tap-highlight-color: rgba(0,0,0,0);
font: 13px/1.55 'Open Sans', Helvetica, Arial, sans-serif;
position: relative;
text-align: center;
background: #555;
color: #fff;
display: inline-block;
font-weight: 400;
font-size: 14px;
cursor: pointer;
border: 0;
font-family: 'Noto Sans', sans-serif;
width: 460px;
height: 40px;
margin-top: 25px;
margin-left: 30px;
line-height: 35px;
}

.Join4or5-2{
-webkit-tap-highlight-color: rgba(0,0,0,0);
font: 13px/1.55 'Open Sans', Helvetica, Arial, sans-serif;
position: relative;
text-align: center;
background: #555;
color: #fff;
display: inline-block;
font-weight: 400;
font-size: 14px;
cursor: pointer;
border: 0;
font-family: 'Noto Sans', sans-serif;
width: 460px;
height: 40px;
margin-top: 10px;
margin-left: 30px;
line-height: 35px;
}

.Join4-check2{
padding-top: 15px;
padding-left: 25px;
}

.Join5{
height: 83px;
width: 553px;
background-color: white;
border: 1px solid rgba(0,0,0,.1);
}

.Join5-btn1{
-webkit-tap-highlight-color: rgba(0,0,0,0);
font: 13px/1.55 'Open Sans', Helvetica, Arial, sans-serif;
text-align: center;
box-sizing: border-box;
border-radius: 0 !important;
font-family: 'Noto Sans', sans-serif;
border: 0;
cursor: pointer;
font-weight: 400;
position: relative;
white-space: nowrap;
display: inline-block;
outline: 0 !important;
font-size: 18px;
padding: 10px 25px;
text-decoration: none;
transition: all 0.3s ease-in-out;
background: #5fb611;
color: #fff;
margin-left: 171px;
margin-top: 17px;

}

.Join5-btn2{
-webkit-tap-highlight-color: rgba(0,0,0,0);
font: 13px/1.55 'Open Sans', Helvetica, Arial, sans-serif;
text-align: center;
box-sizing: border-box;
border-radius: 0 !important;
outline: 0 !important;
font-family: 'Noto Sans', sans-serif;
border: 0;
cursor: pointer;
font-weight: 400;
position: relative;
white-space: nowrap;
display: inline-block;
text-decoration: none;
font-size: 18px;
padding: 10px 25px;
background: #95a5a6;
color: #fff;
margin-right: 5px;
}

/* MemberJoin Page Css End *********************************************************************/

/* MemberFacebookLogin Page Css Start *********************************************************************/
.FJoinmain{
height: 850px;
width: 1903px;
background-color: white;
}

.FJoinMainPage{
height: 600px;
width: 555px;
background-color: white;
position:absolute; 
left: 675px;
margin-top: 17px;
}

.FJoin1{
height: 45px;
width: 553px;
background-color: white;
border-top: 1px solid rgba(0,0,0,.1);
border-left: 1px solid rgba(0,0,0,.1);
border-right: 1px solid rgba(0,0,0,.1);
border-bottom: 1px solid rgba(0,0,0,.1);
}

.FJoin1-1{
text-align: center;
font: 13px/1.55 'Open Sans', Helvetica, Arial, sans-serif;
font-family: 'NanumGothic';
color: #666;
font-size: 20px;
font-weight: 400;
display: block;
padding-top: 7px;
}

.FJoin2{
height: 100px;
width: 553px;
background-color: white;
border-left: 1px solid rgba(0,0,0,.1);
border-right: 1px solid rgba(0,0,0,.1);
}

.FJoin2-1{
width: 150px;
font-size: 13px;
color: gray;
padding-left: 30px;
padding-top: 40px;
float: left;
}

.FJoin2-2{
float: left;
margin-top: 25px;
margin-left: 35px;
background-color: red;
height: 60px;
width: 60px;
}

.FJoin2-2-img{
height: 60px;
width: 60px;
}

.FJoin2-3{
float: left;
margin-top: 40px;
margin-left: 30px;
font: 13px/1.55 'Open Sans', Helvetica, Arial, sans-serif;
box-sizing: border-box;
border-radius: 0 !important;
margin-bottom: 10px;
font-size: 12px;
font-weight: normal;
color: #687074;
}

.FJoin3{
height: 78px;
width: 553px;
background-color: white;
border-left: 1px solid rgba(0,0,0,.1);
border-right: 1px solid rgba(0,0,0,.1);
border-bottom: 1px solid rgba(0,0,0,.1);
}

.FJoin3-1{
text-align: center;
font: 13px/1.55 'Open Sans', Helvetica, Arial, sans-serif;
font-family: 'NanumGothic';
color: #666;
display: block;
font-size: 20px;
font-weight: 400;
padding-top: 20px;
}

.FJoin4{
height: 430px;
width: 553px;
padding-top: 20px;
background-color: white;
border-right: 1px solid rgba(0,0,0,.1);
border-left: 1px solid rgba(0,0,0,.1);
}

.FJoin4-1-a{
height: 50px;
}

.FJoin4-1-b{
margin-top:5px;
height: 50px;
}

.FJoin4-1-1{
width: 150px;
font-size: 13px;
color: gray;
padding-left: 30px;
padding-top: 15px;
float: left;
}

.FJoin-text{
float: left;
margin-top: 10px;
margin-left: 30px;
}

.FJoin-text2{
float: left;
margin-top: 5px;
margin-left: 30px;
}

.FJoin4-2{
width: 273px;
height: 27px;
}


.FJoin4-2-j{
width: 273px;
height: 27px;
margin-left: 30px;
}


.FJoin4-3{
width: 192px;
height: 27px;
}

.FJoin4-4{
width: 192px;
height: 27px;
}

/* 중복확인  버튼 css */
.Finput-group-btn {
position: relative;
font-size: 0;
white-space: nowrap;
width: 1%;
white-space: nowrap;
vertical-align: middle;
display: table-cell;
}

.Fbtn-u{
background: #e74c3c;
border: 0;
color: #fff;
font-size: 14px;
cursor: pointer;
font-weight: 400;
padding: 6px 13px;
position: relative;
background: #e74c3c;
white-space: nowrap;
display: inline-block;
text-decoration: none;
margin-top: 10px;
width: 80px;
}

button{
outline: 0 !important;
line-height: inherit;
-webkit-appearance: button;
text-transform: none;
overflow: visible;
margin: 0;
font: inherit;
}
/* 중복확인  버튼 css */

.FJoin4-select{
width: 120px;
height: 30px;
}

.FJoin4-birth1{
width: 120px;
height: 30px;
}

.FJoin4-birth2{
width: 120px;
height: 30px;
}


.FJoin4-check{
padding-top: 15px;
padding-left: 25px;
}

.FJoin4or5-1{
-webkit-tap-highlight-color: rgba(0,0,0,0);
font: 13px/1.55 'Open Sans', Helvetica, Arial, sans-serif;
position: relative;
text-align: center;
background: #555;
color: #fff;
display: inline-block;
font-weight: 400;
font-size: 14px;
cursor: pointer;
border: 0;
font-family: 'Noto Sans', sans-serif;
width: 460px;
height: 40px;
margin-top: 25px;
margin-left: 30px;
line-height: 35px;
}

.FJoin4or5-2{
-webkit-tap-highlight-color: rgba(0,0,0,0);
font: 13px/1.55 'Open Sans', Helvetica, Arial, sans-serif;
position: relative;
text-align: center;
background: #555;
color: #fff;
display: inline-block;
font-weight: 400;
font-size: 14px;
cursor: pointer;
border: 0;
font-family: 'Noto Sans', sans-serif;
width: 460px;
height: 40px;
margin-top: 10px;
margin-left: 30px;
line-height: 35px;
}

.FJoin4-check2{
padding-top: 15px;
padding-left: 25px;
}

.FJoin5{
height: 83px;
width: 553px;
background-color: white;
border: 1px solid rgba(0,0,0,.1);
}

.FJoin5-btn1{
-webkit-tap-highlight-color: rgba(0,0,0,0);
font: 13px/1.55 'Open Sans', Helvetica, Arial, sans-serif;
text-align: center;
box-sizing: border-box;
border-radius: 0 !important;
font-family: 'Noto Sans', sans-serif;
border: 0;
cursor: pointer;
font-weight: 400;
position: relative;
white-space: nowrap;
display: inline-block;
outline: 0 !important;
font-size: 18px;
padding: 10px 25px;
text-decoration: none;
transition: all 0.3s ease-in-out;
background: #5fb611;
color: #fff;
margin-left: 171px;
margin-top: 17px;

}

.FJoin5-btn2{
-webkit-tap-highlight-color: rgba(0,0,0,0);
font: 13px/1.55 'Open Sans', Helvetica, Arial, sans-serif;
text-align: center;
box-sizing: border-box;
border-radius: 0 !important;
outline: 0 !important;
font-family: 'Noto Sans', sans-serif;
border: 0;
cursor: pointer;
font-weight: 400;
position: relative;
white-space: nowrap;
display: inline-block;
text-decoration: none;
font-size: 18px;
padding: 10px 25px;
background: #95a5a6;
color: #fff;
margin-right: 5px;
}

/* MemberFacebookLogin Page Css End *********************************************************************/

/* memberMypage css  Start **********************************************************************/

.mypagemain{
background-color: white;
height: 880px;
width: 1165px;
margin-left: 370px;
margin-top: 90px;
border-bottom: 1px solid #e8e8e8;
}

.mypagemain2{
background-color: white;
height: 880px;
width: 265px;
}

.mypage1{ 
background-color: #f5f5f5;
height: 360px;
width: 263px;
border: 1px solid #e8e8e8;
border-radius: 5px;
}

.mypage1-1{
height: 250px; 
width: 250px; 
margin-left: 7px; 
margin-top: 10px;
}

.mypage1-1-1{
height: 250px; 
width: 250px;
border-radius: 50%;
}

.mypage1-2{
width: 220px;
height: 50px;
margin-left: 20px;
margin-top: 20px;
background-color: #f5f5f5;
}

.mypage1-2-1{
width: 140px;
height: 50px;
background-color: #f5f5f5;
float: left;
font-size: 10px;
}

.mypage1-2-2{
margin-top: 10px;
width: 80px;
height: 30px;
background-color: rgb(153, 153, 153);
float: right;
border-radius: .25em;
}

.mypage1-2-2-1{
color: white;
font-weight: 700;
text-align: center;
margin-top: 4px;
}

.mypage2{
background-color: white;
height: 200px;
width: 263px;
border: 1px solid #e8e8e8;
border-radius: 5px;
}

.mypage2-1{
background-color: white;
height: 40px;
width: 263px;
}

.mypage2-1-1{
height: 25px;
width: 240px;
margin-left: 15px;
background-color: white;
padding-top: 8px;
color: #807e7e;
}

.mypage2-1-1-1{
font-size: 15px;
width: 110px;
float: left;
height: 25px;
text-align: center;
border-right: 1px solid #e8e8e8;
}

.mypage2-1-1-3{
font-size: 15px;
width: 110px;
float: left;
height: 25px;
text-align: center;
}

.mypage2-2{
background-color: white;
height: 80px;
width: 263px;
border-bottom: 1px solid #e8e8e8;
}

.mypage2-3{
background-color: white;
height: 80px;
width: 263px;
border-bottom: 1px solid #e8e8e8;
}

.mypage3{
background-color: white;
height: 250px;
width: 233px;
border: 1px solid #e8e8e8;
border-radius: 5px;
margin-top: 25px;
margin-left: 15px;
}

.mypage3-1{
background-color: white;
height: 49px;
width: 233px;
border-bottom:1px solid #e8e8e8;
}

.mypage3-2{
background-color: white;
height: 49px;
width: 233px;
border-bottom:1px solid #e8e8e8;
}

.mypage3-3{
background-color: white;
height: 49px;
width: 233px;
border-bottom:1px solid #e8e8e8;
}

.mypage3-4{
background-color: white;
height: 49px;
width: 233px;
border-bottom:1px solid #e8e8e8;
}

.mypage3-5{
background-color: white;
height: 50px;
width: 233px;
}

.mypagemain3{
background-color: #f2f5da;
width:870px;
height: 850px;
float: right;
}
















/* memberMypage css  End **********************************************************************/
</style>
