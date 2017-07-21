<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>

    <spring:url value="/resources/css/UserProfile.css" var="dashboardCss"/>

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
                            <a href="#">${user_name}</a>
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
                    Topics
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-10">
                            <table style="border-spacing:5%;">
                                <tr>
                                    <td>
                                        <a href="#"><font size=2px;> Grails</font></a>
                                    </td>

                                    <td>
                                        <font size=2px> &nbsp;&nbsp;&nbsp;&nbsp;Subscriptions&nbsp;&nbsp;</font>
                                    </td>
                                    <td>
                                        <font size=2px>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Posts</font>

                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <font size=2px;>
                                            <select>
                                                <option>Serious</option>
                                            </select>
                                        </font>
                                    </td>
                                    <td>
                                        <font size=2px style="color:blue">&nbsp;&nbsp;&nbsp; 50</font>
                                    </td>
                                    <td>
                                        <font size=2px style="color:blue">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 30</font>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-10">

                            <table style="border-spacing:5%;">
                                <tr>
                                    <td>
                                        <a href="#"><font size=2px;> Grails</font></a>
                                    </td>

                                    <td>
                                        <font size=2px>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Subscriptions&nbsp;</font>
                                    </td>
                                    <td>
                                        <font size=2px>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Posts</font>

                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="#"><font size=2px style="color:blue"> Subscribe</font></a>
                                    </td>
                                    <td>
                                        <font size=2px style="color:blue">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 50</font>
                                    </td>
                                    <td>
                                        <font size=2px style="color:blue">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 30</font>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    Subscriptions
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-10">
                            <table style="border-spacing:5%;">
                                <tr>
                                    <td>
                                        <a href="#"><font size=2px;> Grails</font></a>
                                    </td>

                                    <td>
                                        <font size=2px> &nbsp;&nbsp;&nbsp;&nbsp;Subscriptions&nbsp;&nbsp;</font>
                                    </td>
                                    <td>
                                        <font size=2px>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Posts</font>

                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <font size=2px;>
                                            <select>
                                                <option>Serious</option>
                                            </select>
                                        </font>
                                    </td>
                                    <td>
                                        <font size=2px style="color:blue">&nbsp;&nbsp;&nbsp; 50</font>
                                    </td>
                                    <td>
                                        <font size=2px style="color:blue">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 30</font>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-10">
                            <table style="border-spacing:5%;">
                                <tr>
                                    <td>
                                        <a href="#"><font size=2px;> Grails</font></a>
                                    </td>

                                    <td>
                                        <font size=2px> &nbsp;&nbsp;&nbsp;&nbsp;Subscriptions&nbsp;&nbsp;</font>
                                    </td>
                                    <td>
                                        <font size=2px>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Posts</font>

                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <font size=2px;>
                                            <select>
                                                <option>Serious</option>
                                            </select>
                                        </font>
                                    </td>
                                    <td>
                                        <font size=2px style="color:blue">&nbsp;&nbsp;&nbsp; 50</font>
                                    </td>
                                    <td>
                                        <font size=2px style="color:blue">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 30</font>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="col-md-7">
            <!--Coding for "Posts" panel here-->
            <div class="panel panel-default">
                <div class="panel-heading">
                    Posts
                </div>
                <!--Coding for Posts's body here-->
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-12">
                            <a href="#">Grails</a>
                            <p>
                                To group many panels together, wrap a with class .panel-group a
                                round them. The .panel-group class clears the bottom-margin of each
                                panel
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
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="#">Download</a>&nbsp;
                            <a href="#">View Full Site</a>&nbsp;
                            <a href="#">Mark as read</a>&nbsp;
                            <a href="#">View Post</a>
                        </div>

                    </div>
                </div>
                <hr>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-12">
                            <a href="#">Grails</a>
                            <p>
                                To group many panels together, wrap a with class .panel-group a
                                round them. The .panel-group class clears the bottom-margin of each
                                panel
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
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
        </div>
    </div>
</div>




</body>
</html>