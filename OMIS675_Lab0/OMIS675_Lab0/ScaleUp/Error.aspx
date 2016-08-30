﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="OMIS675_Lab0.ScaleUp.Error" %>

<!DOCTYPE HTML>
<html>
<head>
<title>Oops!!</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href='http://fonts.googleapis.com/css?family=Courgette' rel='stylesheet' type='text/css'>
<style type="text/css">
body{
	font-family: 'Courgette', cursive;
}
body{
	background:#f3f3e1;
}	
.wrap{
	margin:0 auto;
	width:1000px;
}
.logo{
	margin-top:50px;
}	
.logo h1{
	font-size:200px;
	color:#8F8E8C;
	text-align:center;
	margin-bottom:1px;
	text-shadow:1px 1px 6px #fff;
}	
.logo p{
	color:rgb(228, 146, 162);
	font-size:20px;
	margin-top:1px;
	text-align:center;
}	
.logo p span{
	color:lightgreen;
}	
.sub a{
	color:white;
	background:#8F8E8C;
	text-decoration:none;
	padding:7px 120px;
	font-size:13px;
	font-family: arial, serif;
	font-weight:bold;
	-webkit-border-radius:3em;
	-moz-border-radius:.1em;
	-border-radius:.1em;
}	
.footer{
	color:#8F8E8C;
	position:absolute;
	right:10px;
	bottom:10px;
}	
.footer a{
	color:rgb(228, 146, 162);
}	
</style>
    

<body>
     <link href="../Content/Site.css" rel="stylesheet" />
	<div class="wrap">
	   <div class="logo">
	   <h1>Oops</h1>
	    <p>We have a problem in our service! n Be right back...</p>
  	      <div class="sub">
	        <p>
                <asp:Button ID="Back" runat="server" CssClass="btn btn-default" Text="Back" OnClick="Back_Click" /></p>
	      </div>
        </div>
	</div>
	
	<%--<div class="footer">
	 Design by-<a href="http://w3layouts.com">W3Layouts</a>
	</div>--%>
	
</body>