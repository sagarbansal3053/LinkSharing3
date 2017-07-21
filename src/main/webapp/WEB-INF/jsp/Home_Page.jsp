<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 16/7/17
  Time: 10:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home Page</title>

    <!--For .css, import:-->
   <spring:url value="/resources/css/home_page.css" var="coreCss"/>
    <link href="${coreCss}" rel="stylesheet">

    <!--For bootstrap, import:-->
    <link rel="icon" type="image/x-icon" href="favicon.ico">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!--For icons, import:-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

   <%-- <style type="text/css">
        .checkmsg
        {
            color: red;
        }
    </style>--%>

</head>
<body onload="loadDoc()">

<%--<a href="/test">move to test</a>--%>
<!--Top part of page-->
<div class="top-box-border">
    <nav class="navbar" style="border: 2px solid; border-radius: 10px;">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="/">Link Sharing</a>
            </div>

            <ul class="navbar-form navbar-right">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="search">
                    <div class="input-group-btn">
                        <button type="submit" class="btn btn-default"><i class="glyphicon glyphicon-search"></i>
                        </button>
                    </div>
                </div>
            </ul>
        </div>
    </nav>
</div>


<br>
<br>


<!--Bototm part of page-->
<div class="bottom-part">

    <div class="row">
        <div class="col-md-8">

            <!--Coding for the panel "Recent shares" from here-->
            <div class="panel panel-default" style="width:800px;">
                <div class="panel-heading">
                    Recent Shares

                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-2">
                            <img class="pic-class"
                                 src="http://www.iconsfind.com/wp-content/uploads/2015/10/20151012_561baed03a54e.png" ;>
                        </div>
                        <div class="col-md-10">
                            <a href="#">Uday Pratap Singh </a>
                            <font size=2px> @uday 5 mins</font>
                            <a href="#" style="float: right; padding-right: 15px;">Grails</a>

                            <p>
                                To group many panels together, wrap a with class .panel-group a
                                round them. The .panel-group class clears the bottom-margin of each
                                panel: To group many panels together, wrap a with class .panel-group
                                around them. The .panel-group class clears the bottom.
                            </p>
                            <i class="fa fa-facebook-square" style="font-size:20px"></i>
                            <i class="fa fa-twitter" style="font-size:20px"></i>
                            <i class="fa fa-google-plus" style="font-size:20px"></i>
                            <a href="#" style="float: right; padding-right:5%;">View Post</a>
                        </div>
                    </div>
                </div>
                <br>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-2">
                            <img class="pic-class"
                                 src="http://www.iconsfind.com/wp-content/uploads/2015/10/20151012_561baed03a54e.png" ;>
                        </div>
                        <div class="col-md-10">
                            <a href="#">Uday Pratap Singh </a>
                            <font size=2px> @uday 5 mins</font>
                            <a href="#" style="float: right; padding-right: 15px;">Grails</a>

                            <p>
                                To group many panels together, wrap a with class .panel-group a
                                round them. The .panel-group class clears the bottom-margin of each
                                panel: To group many panels together, wrap a with class .panel-group
                                around them. The .panel-group class clears the bottom.
                            </p>
                            <i class="fa fa-facebook-square" style="font-size:20px"></i>
                            <i class="fa fa-twitter" style="font-size:20px"></i>
                            <i class="fa fa-google-plus" style="font-size:20px"></i>
                            <a href="#" style="float: right; padding-right:5%;">View Post</a>
                        </div>
                    </div>
                </div>

            </div>
            <!--Coding for "Top posts" panel here-->
            <div class="panel panel-default" style="width:800px;">
                <div class="panel-heading">
                    Top Posts

                    <!--Coding for dropdown list-->
                    <div class="dropdown">
                        <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="true">
                            Dropdown
                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                            <li><a href="#">Today</a></li>
                            <li><a href="#">1 Week</a></li>
                            <li><a href="#">1 Month</a></li>
                            <li><a href="#">i Year</a></li>
                        </ul>
                    </div>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-2">
                            <img class="pic-class"
                                 src="http://www.iconsfind.com/wp-content/uploads/2015/10/20151012_561baed03a54e.png" ;>
                        </div>
                        <div class="col-md-10">
                            <a href="#">Uday Pratap Singh </a>
                            <font size=2px> @uday 5 mins</font>
                            <a href="#" style="float: right; padding-right: 15px;">Grails</a>

                            <p>
                                To group many panels together, wrap a with class .panel-group a
                                round them. The .panel-group class clears the bottom-margin of each
                                panel: To group many panels together, wrap a with class .panel-group
                                around them. The .panel-group class clears the bottom.
                            </p>
                            <i class="fa fa-facebook-square" style="font-size:20px"></i>
                            <i class="fa fa-twitter" style="font-size:20px"></i>
                            <i class="fa fa-google-plus" style="font-size:20px"></i>
                            <a href="#" style="float: right; padding-right:5%;">View Post</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">

            <!--Coding for "Login" panel here-->
            <div class="panel panel-default" style="width:400px;">
                <div class="panel-heading">
                    Login
                </div>
                <!--Coding for Login's body here-->

                <div class="panel-body">
                    <form action="/Login" method="post">
                        <p class="checkmsg">${loginInvalidMsg}</p>
                        <div class="form-group">
                            <label for="usr">Email/Userame:*</label>
                            <input type="text" class="form-control" name="username" required>
                        </div>
                        <br>
                        <div class="form-group">
                            <label for="pwd">Password:*</label>
                            <input type="password" class="form-control" id="pwd" name="password" required>
                        </div>

                    <a href="www.gmail.com">Forgot Password</a>
                    <button type="submit" class="btn">Login</button>
                    </form>
                </div>
            </div>

            <!--Coding for "Register" panel here-->
            <div class="panel panel-default" style="width:400px;">
                <div class="panel-heading">
                    Register
                </div>
                <!--Coding for Register's body here-->
                <div class="panel-body">
                    <form action="/register" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="usrf">First Name:*</label>
                            <input type="text" class="form-control" id="usrf" name="fname" required>
                        </div>

                        <p class="checkmsg">${firstname_msg}</p>

                        <br>
                        <div class="form-group">
                            <label for="usrl">Last Name:*</label>
                            <input type="text" class="form-control" id="usrl" name="lname" required>
                        </div>

                        <p class="checkmsg">${lastname_msg}</p>

                        <br>
                        <div class="form-group">
                            <label for="usre">Email:*</label>
                            <input type="text" class="form-control" id="usre" name="email" required>
                        </div>

                        <p class="checkmsg">${email_msg}</p>

                        <br>
                        <div class="form-group">
                            <label for="usrread">Userame:*</label>
                            <input type="text" class="form-control"  id="usrread" name="username" required>
                        </div>

                        <h1 id="demo"> </h1>

                        <br>
                        <div class="form-group">
                            <label for="pwd">Password:*</label>
                            <input type="password" class="form-control" id="pwd" name="password" required>
                        </div>

                        <p class="checkmsg">${password_msg}</p>
                        <p class="checkmsg">${password_mismatch_msg}</p>

                        <br>
                        <div class="form-group">
                            <label for="cpwd">Confirm Password:*</label>
                            <input type="password" class="form-control" id="cpwd" name="confirm_password" required>
                        </div>

                        <p class="checkmsg">${confirmpassword_msg}</p>
                        <p class="checkmsg">${password_mismatch_msg}</p>

                        <br>
                        <div class="form-group">

                            <label>Upload Image:*</label>
                            <input type="file" class="form-control" id="file" name="file">
                        </div>
                        <br>
                        <div>
                            <br>
                            <button type="submit" class="btnSubmit" style="float: right">Register</button>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
</div>




<%--
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
   $("#usrread").blur(function () {
var data = $(this)[0].value;

 $.ajax({
type: "Post",
url: "/checkusername",
data: {data: data},
success: function (value) {
alert('msg:' +JSON.stringify(value))

},
error: function (e) {
alert('Error: ' + JSON.stringify(e));
}
});
});

</script>
--%>

<%--<script>
    function loadDoc() {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("demo").innerHTML = this.responseText;
            }
        };
        xhttp.open("GET", "/test", true);
        xhttp.send();
    }
</script>--%>

</body>
</html>
