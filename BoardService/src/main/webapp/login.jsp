<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style>
#top_wrap {
    width: 100%;
    height: 50px;
    margin-bottom: 50px;
    position: relative;
}

/*로그인 폼 내에 있는 사이트명*/
#top_wrap h1 {
    margin: 50px auto;
    width: 50%;
    height: 90px;
    text-align: center;
}

#top_wrap h1 a {
    width: 100%;
    height: 100%;
    transition: all 0.2s;
    display: block;
    font-weight: 900; font-size: 55px; letter-spacing: -1.7px;
    line-height: 0.8em;
}

#login {
    width: 500px;
    margin: 0 auto;
    margin-top: 100px;
    height: 500px;
    box-sizing: border-box;
    background-color: rgba(255, 255, 255, 0.93);
    border: 1px solid #ccc;
    border-radius: 20px;
    box-shadow: 0 0 10px rgba(0,0,0,0.1);
}




/*    회원로그인 전체, 비회원주문조회 전체*/
#login_con {
    clear: both;
    width: 70%;
    min-width: 350px;
    margin: 0 auto;
    overflow: hidden;
}


/*    회원로그인 전체*/
#login1 {
    width: 100%;
}

#u_id,
#u_pwd {
    width: 100%;
    height: 50px;
    border: 1px solid #ccc;
    text-indent: 1em;
    margin-bottom: 20px;
    box-sizing: border-box;
}
.u_txt input:focus{outline: none;}
.u_txt{position: relative;}
.u_txt label{
}
.u_txt .focus{font-size: 0.7em; top: 0px; color: #8117fe; }

/*    로그인버튼*/
#btn_wrap1,
#btn_wrap2 {
    width: 100%;
    height: 60px;
    position: relative;
    overflow: hidden;
    margin-bottom: 20px;
    margin-top: 30px;
}

#s_btn1,
#s_btn2,
#s_btn3,
#s_btn4 {
    font-size: 15px;
    cursor: pointer;
    width: 100%;
    height: 60px;
    font-weight: bold;
    position: absolute;
    left: 0;
    top: 0;
}

#s_btn1{
    border: none;
     background-color: #b7d5f4;
    border-radius: 30px;
    color: #fff;
    z-index: 1;
    transition: all 0.3s;
}

#s_btn1:hover{
    border: 1px solid #b7d5f4;

    color: #b7d5f4;
    border-radius: 30px;
    background: #fff;
    letter-spacing: 3px;
}
</style>
</head>
<body>
<div id="login">
  <div id="top_wrap">
      <h1>LOGIN</h1>
  </div>

  <div id="login_con">
      <div id="login1" class="login_box">
          <form action="login.do" method="post">
              <p class="u_txt">
	              <label for="u_id" class="u_id_txt">아이디</label>
	              <input type="text" id="u_id" name="id" autocomplete="off">
              </p>
              <p class="u_txt">
	              <label for="u_pwd">비밀번호</label>
	              <input type="password" id="u_pwd" name="password" autocomplete="off">
              </p>
              <p id="btn_wrap1">
                  <input type="submit" id="s_btn1" class="s_btn" value="로그인">
              </p><!-- btn_wrap1 -->
          </form>
      </div><!-- 회원로그인, login1 -->
  </div><!-- login_con -->
</div>

</body>
</html>