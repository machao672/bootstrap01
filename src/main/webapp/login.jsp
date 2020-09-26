<%--
  Created by IntelliJ IDEA.
  User: 马某
  Date: 2020/9/16
  Time: 15:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascripat" src="js/bootstrap.js"></script>
    <link rel="stylesheet" href="css/bootstrap.css" />
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <fieldset >
                <legend>登录</legend>
                <form action="login.action">
                <div>
                    <label for="username" class="control-label">用户名：</label>
                    <input type="text"  id="username" name="username" class="form-control" placeholder="请输入用户名" />
                </div>
                <div>
                    <label for="password" class="control-label">密码：</label>
                    <input type="password" id="password" name="password" class="form-control" placeholder="请输入密码" />
                </div>
                <br>
                <div class="row">
                    <input type="submit" id="btnlogin" class="btn btn-primary col-md-2 col-md-offset-3" value="登录" />
                    <input type="button" value="注册" class="btn btn-warning col-md-2 col-md-offset-1" />
                </div>
                </form>
            </fieldset>
        </div>
    </div>
</div>
<script type="text/javascript">
    // $("#btnlogin").click(function () {
    //     var username=$("#username").val();
    //     var password=$("#password").val();
    //     $.get("login.action",{"username":username,"password":password},function(data){
    //         alert(22);
    //         if(data.code =="1"){
    //
    //             window.location="user.jsp";
    //         }
    //     },"json");
    // });

</script>   
</body>
</html>
