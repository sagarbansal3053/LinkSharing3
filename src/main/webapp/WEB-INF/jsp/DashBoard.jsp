<%@ page import="com.model.User" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 18/7/17
  Time: 12:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<html>
<head>
    <title>DashBoard</title>

    <!--For myTask.css, import:-->

    <spring:url value="/resources/css/dasboard.css" var="dashboardCss"/>

    <link href="${dashboardCss}" rel="stylesheet">

    <!--For bootstrap, import:-->
    <link rel="icon" type="image/x-icon" href="favicon.ico">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!--For icons, import:-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>



<!--Top part of page-->
<%@ include file="header.jsp"%>

<br>
<br>

<!--Bototm part of page-->
<div class="bottom-part">

    <div class="row">
        <div class="col-md-6">

            <!--Coding for the panel "Recent shares" from here-->
            <div class="panel panel-default">
                <!-- <div class="panel-heading">
                    Recent Shares

                </div> -->
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-2">
                            <a href="/userprofile">
                            <img class="pic-class" height="100" width="100" src="/resources/image/images.jpg";>
                            </a>

                        </div>

                        <div class="col-md-10">
                            <a href="/userprofile">${user_name}</a>
                            <table>
                                <tr>
                                    <td>
                                        <font size=2px> @${name} </font>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <font size=2px> Subscriptions  </font>
                                    </td>
                                    <td>
                                        <font size=2px>  Topics</font>

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
            <!--Coding for "Subscriptions" panel here-->
            <div class="panel panel-default">
                <div class="panel-heading">
                    Subscriptions

                    <a href="#" style="float:right">View All</a>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-2">
                            <img class="pic-class" src="http://www.iconsfind.com/wp-content/uploads/2015/10/20151012_561baed03a54e.png";>
                        </div>

                        <div class="col-md-10">
                            <a href="#"> Grails</a>
                            <table style="border-spacing:5%;">
                                <tr>
                                    <td>
                                        <font size=2px> @uday 5 mins</font>
                                    </td>

                                    <td>
                                        <font size=2px> Subscriptions</font>
                                    </td>
                                    <td>
                                        <font size=2px> Posts</font>

                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#"><font size=2px style="color:blue"> Unsubscribe</font></a>
                                    </td>
                                    <td>
                                        <font size=2px style="color:blue"> 50</font>
                                    </td>
                                    <td>
                                        <font size=2px style="color:blue"> 30</font>
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
                <hr>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-2">
                            <img class="pic-class" src="http://www.iconsfind.com/wp-content/uploads/2015/10/20151012_561baed03a54e.png";>
                        </div>

                        <div class="col-md-10">
                            <a href="#"> Grails</a>
                            <table style="border-spacing:5%;">
                                <tr>
                                    <td>
                                        <font size=2px> @uday 5 mins</font>
                                    </td>

                                    <td>
                                        <font size=2px> Subscriptions</font>
                                    </td>
                                    <td>
                                        <font size=2px> Posts</font>

                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#"><font size=2px style="color:blue"> Unsubscribe</font></a>
                                    </td>
                                    <td>
                                        <font size=2px style="color:blue"> 50</font>
                                    </td>
                                    <td>
                                        <font size=2px style="color:blue"> 30</font>
                                    </td>
                                </tr>
                            </table>
                            <br>
                            <select>
                                <option>Serious</option>
                            </select>
                            &nbsp;&nbsp;
                            <a class="glyphicon glyphicon-envelope" data-toggle="modal" data-target="#emailModal"></a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Coding for Trending Topics -->
            <div class="panel panel-default">
                <div class="panel-heading">
                    Trending Topics
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-2">
                            <img class="pic-class" src="http://www.iconsfind.com/wp-content/uploads/2015/10/20151012_561baed03a54e.png";>
                        </div>

                        <div class="col-md-10">
                            <a href="#"> Grails</a>
                            <table style="border-spacing:5%;">
                                <tr>
                                    <td>
                                        <font size=2px> @uday 5 mins</font>
                                    </td>

                                    <td>
                                        <font size=2px> Subscriptions</font>
                                    </td>
                                    <td>
                                        <font size=2px> Posts</font>

                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#"><font size=2px style="color:blue"> Unsubscribe</font></a>
                                    </td>
                                    <td>
                                        <font size=2px style="color:blue"> 50</font>
                                    </td>
                                    <td>
                                        <font size=2px style="color:blue"> 30</font>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-2">
                            <img class="pic-class" src="http://www.iconsfind.com/wp-content/uploads/2015/10/20151012_561baed03a54e.png";>
                        </div>

                        <div class="col-md-10">
                            <input type="text" placeholder="Grails">
                            <button type="submit">Save</button>
                            <button type="reset">Cancel</button>
                            <br><br>
                            <table style="border-spacing:5%;">
                                <tr>
                                    <td>
                                        <font size=2px> @uday 5 mins</font>
                                    </td>

                                    <td>
                                        <font size=2px> Subscriptions</font>
                                    </td>
                                    <td>
                                        <font size=2px> Posts</font>

                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#"><font size=2px style="color:blue"> Unsubscribe</font></a>
                                    </td>
                                    <td>
                                        <font size=2px style="color:blue"> 50</font>
                                    </td>
                                    <td>
                                        <font size=2px style="color:blue"> 30</font>
                                    </td>
                                </tr>
                            </table>
                            <br>
                            <select>
                                <option>Serious</option>
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
            <!--Coding for "Top posts" panel here-->

        </div>

        <div class="col-md-6">
            <!--Coding for the panel "Recent shares" from here-->
            <div class="panel panel-default">
                <div class="panel-heading">
                    Inbox
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-2">
                            <img class="pic-class" src="http://www.iconsfind.com/wp-content/uploads/2015/10/20151012_561baed03a54e.png";>
                        </div>

                        <div class="col-md-10">
                            <a href="#">Uday Pratap Singh </a>

                            <p>
                                To group many panels together, wrap a with class .panel-group a
                                round them. The .panel-group class clears the bottom-margin of each
                                panel: To group many panels together, wrap a with class
                            </p>
                            <a href="www.facebook.com">
                                <i class="fa fa-facebook-square" style="font-size:20px"></i>
                            </a>
                            <a href="www.twitter.com">
                                <i class="fa fa-twitter" style="font-size:20px"></i>
                            </a>
                            <a href="www.plus.google.com">
                                <i class="fa fa-google-plus" style="font-size:20px" ></i>
                            </a>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="#">Download</a>&nbsp;
                            <a href="#">View Full Site</a>&nbsp;
                            <a href="#">Mark as read</a>&nbsp;
                            <a href="#">View Post</a>
                        </div>

                    </div>
                </div>
                <br>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-2">
                            <img class="pic-class" src="http://www.iconsfind.com/wp-content/uploads/2015/10/20151012_561baed03a54e.png";>
                        </div>

                        <div class="col-md-10">
                            <a href="#">Uday Pratap Singh </a>

                            <p>
                                To group many panels together, wrap a with class .panel-group a
                                round them. The .panel-group class clears the bottom-margin of each
                                panel: To group many panels together, wrap a with class
                            </p>
                            <a href="www.facebook.com">
                                <i class="fa fa-facebook-square" style="font-size:20px"></i>
                            </a>
                            <a href="www.twitter.com">
                                <i class="fa fa-twitter" style="font-size:20px"></i>
                            </a>
                            <a href="www.plus.google.com">
                                <i class="fa fa-google-plus" style="font-size:20px" ></i>
                            </a>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="#">Download</a>&nbsp;
                            <a href="#">View Full Site</a>&nbsp;
                            <a href="#">Mark as read</a>&nbsp;
                            <a href="#">View Post</a>
                        </div>

                    </div>
                </div>
            </div>

            <%--send invitation--%>
            <div class="modal fade" id="myModal2" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Send Invitation</h4>
                        </div>
                        <div class="modal-body">
                            Email:* <input type="text" placeholder="Email" style="position:relative;margin-left:40%;">
                            <br><br>
                            Topic:* <select style="position:relative;margin-left:40%;">
                            <option>Topic</option>
                            <option>Topic 1</option>
                        </select>
                            <br><br>
                            <button type="submit" style="position:relative; margin-left:48%;">Invite</button>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>

                </div>
            </div>

            <!--Coding for "Share link" panel here-->


            <div class="modal fade" id="myModal3" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Share Link</h4>
                        </div>
                        <div class="modal-body">
                            <form action = "/shareLink" method="get">
                            Link:* <input type="text" placeholder="Link" style="position:relative;margin-left:40%;" name="url" required>
                            <br><br>
                            Description:* <textarea cols="22" rows=3  placeholder="Description" name="description" style="position:relative;margin-left:32%;" required></textarea>
                            <br><br>
                            Topic:* <select style="position:relative;margin-left:40%;" name="topic">
                                <c:forEach items="${topiclist}" var="databaseValue">
                                    <option value="${databaseValue}">
                                            ${databaseValue}
                                    </option>
                                </c:forEach>
                        </select>
                            <br><br>
                            <button type="submit" style="position:relative; margin-left:48%;">Share</button>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>

                </div>
            </div>


            <!--Coding for "Share document" panel here-->
            <div class="modal fade" id="myModal4" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Share Document</h4>
                        </div>
                        <div class="modal-body">
                            Document:* <input type="file" style="position:relative;margin-left:40%;">
                            <br><br>
                            Description:* <textarea cols="22" rows=3  placeholder="Description" style="position:relative;margin-left:32%;"></textarea>
                            <br><br>
                            Topic:* <select style="position:relative;margin-left:40%;">
                            <option>Topic</option>
                            <option>Topic 1</option>
                        </select>
                            <br><br>
                            <button type="submit" style="position:relative; margin-left:48%;">Share</button>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>

                </div>
            </div>

            <!--Coding for "Create Topic" panel here-->

            <div class="modal fade" id="myModal1" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Create Topic</h4>
                        </div>
                        <div class="modal-body">
                            <form action="/create_topic" method="post">
                            Name:* <input type="text" style="position:relative;margin-left:40%;" name="topicname"/>
                            <br><br>

                            Visibility:* <select style="position:relative;margin-left:40%;" name="visibility">
                            <option value="Public">Public</option>
                            <option value="Private">Private</option>
                        </select>
                            <br><br>
                            <button type="submit" style="position:relative; margin-left:48%;">Save</button>
                            </form>
                        </div>
                        <div class="modal-footer">

                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </div>
</div>

<script>
    function loadDocDashBoard() {
        window.location.href = "/LoadDocDashBoard";
    }
</script>
</body>
</html>

