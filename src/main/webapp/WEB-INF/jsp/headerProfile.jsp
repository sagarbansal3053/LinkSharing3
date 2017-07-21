<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 21/7/17
  Time: 12:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>

<div class="top-box-border">
    <nav class="navbar" style="border: 2px solid; border-radius: 10px;">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="/dashboard">Link Sharing</a>
            </div>

            <span class="navbar-form navbar-right">
        <input type="text" class="form-control" placeholder="search">
        <button type="submit" class="glyphicon glyphicon-search" style="height:32px;width:32px;"></button>
        &nbsp;&nbsp;
        <span class="glyphicon glyphicon-user"></span>
        <select id="myselect">
            <option onclick="loadeditprofile()">Profile</option>
            <option onclick="loadDoc()">Logout</option>
        </select>
      </span>
        </div>
    </nav>
</div>

<script>
    function loadDoc() {
        window.location.href = "/Logout";
    }

    function loadeditprofile() {
        window.location.href = "/editprofile";
    }
</script>
</body>
</html>
