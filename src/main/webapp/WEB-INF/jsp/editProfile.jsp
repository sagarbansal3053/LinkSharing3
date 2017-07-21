<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>


    <!--For bootstrap, import:-->
    <spring:url value="/resources/css/editProfile.css" var="dashboardCss"/>

    <link href="${dashboardCss}" rel="stylesheet">

    <link rel="icon" type="image/x-icon" href="favicon.ico">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!--For icons, import:-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>

<!--Top part of page-->
<%@ include file="headerProfile.jsp"%>

<br>
<br>

<!--Bototm part of page-->
<div class="bottom-part">

    <div class="row">
        <div class="col-md-5">
            <!-- Coding -->
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-2">
                            <a href="/userprofile">
                                <img class="pic-class" height="100" width="100" src="/resources/image/images.jpg";>
                            </a>                        </div>

                        <div class="col-md-10">
                            <a href="#">${user_name} </a>
                            <table>
                                <tr>
                                    <td>
                                        <font size=2px> @${name} 5 mins</font>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <font size=2px> Subscriptions</font>
                                    </td>
                                    <td>
                                        <font size=2px> Topics</font>

                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="/userprofile">${subscriptionCount}</a>
                                    </td>
                                    <td>
                                        <a href="/userprofile">${topicCount}</a>
                                    </td>
                                </tr>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    Top Posts
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-2">
                            <img class="pic-class" src="http://www.iconsfind.com/wp-content/uploads/2015/10/20151012_561baed03a54e.png";>
                        </div>

                        <div class="col-md-10">
                            <input type="text" placeholder="Grails">
                            <button type="submit">Save</button>
                            <br><br>
                            <table style="border-spacing:5%;">
                                <tr>
                                    <td>
                                        <font size=2px> @uday 5 mins&nbsp;</font>
                                    </td>

                                    <td>
                                        <font size=2px> Subscriptions&nbsp;&nbsp;</font>
                                    </td>
                                    <td>
                                        <font size=2px> Post</font>

                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <font size=2px style="color:blue;position:relative;margin-left:100%;"> 50</font>
                                    </td>
                                    <td>
                                        <font size=2px style="color:blue;position:relative;margin-left:100%;"> 30</font>
                                    </td>
                                </tr>
                            </table>
                            <br>
                            <select>
                                <option>Serious</option>
                            </select>
                            &nbsp;&nbsp;
                            <select>
                                <option>Private</option>
                                <option>Delete</option>
                                <option>Edit</option>
                            </select>
                            &nbsp;&nbsp;
                            <span class="glyphicon glyphicon-envelope"></span>
                            &nbsp;&nbsp;
                            <span class="glyphicon glyphicon-edit"></span>
                            &nbsp;&nbsp;
                            <span class="glyphicon glyphicon-trash"></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-7">
            <!--Coding for "Profile" panel here-->
            <div class="panel panel-default">
                <div class="panel-heading">
                    Profile
                </div>
                <!--Coding for Profile's body here-->
                <div class="panel-body">
                    <div class="form-group">
                        <label for="usrf">First Name:*</label>
                        <input type="text"  style="float:right;width:50%">
                    </div>
                    <br>
                    <div class="form-group">
                        <label for="usrl">Last Name:*</label>
                        <input type="text"  style="float:right;width:50%">
                    </div>
                    <br>
                    <div class="form-group">
                        <label for="usr">Userame:*</label>
                        <input type="text"  style="float:right;width:50%">
                    </div>
                    <br>
                    <div class="form-group">
                        <label for="pic">Photo:</label>
                        <input type="file"  style="float:right;width:50%">
                    </div>
                    <br>
                    <button type="submit"style="float: right">Update</button>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    Change Password
                </div>
                <!--Coding for Change Password's body here-->

                <div class="panel-body">
                    <form>
                        <div class="form-group">
                            <label for="usr">Password:*</label>
                            <input type="text" style="float:right;width:50%;">
                        </div>
                        <br>
                        <div class="form-group">
                            <label for="pwd">Confirm Password:*</label>
                            <input type="password" style="float:right;width:50%;">
                        </div>
                    </form>
                    <button type="button" style="float:right;">Update</button>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>