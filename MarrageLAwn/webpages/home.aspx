<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="webpages_home" %>

<!DOCTYPE html>
	<html>
		<head>
            <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
            <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-animate.js"></script>
            <script src="../scripts/jquery-1.4.1.min.js"></script>
            <link href="../css/Design.css" rel="stylesheet" />
            <link href="../css/style.css" rel="stylesheet" />     
            <script src="../scripts/scripts.js"></script>
            <script src="../scripts/loginForm.js"></script>
            <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
	       <title>Shaddi Hall</title>
	</head>
	<body onload="Load()">

	<div id="container">
        <header>
			<br>
            <div id="navigation">
			    <h1 >
				    <div id="head_data"> <font color="white">Shaddi Hall</font></div>
			    </h1>
			    <div id="menu">
				    <ul>
				        <li><a href="default.asp">
					        <img src="../images/extra/search.png" alt="search" style="width:30px;height:30px;border:0">
				        </a></li>
                        <li>
                            <img src="../images/extra/profile.png" id="signin" alt="search" style="width:30px;height:30px;border:0">
				        </li>
		            </ul>
                </div>
            </div>
       </header>
        
			<div id="slider">
        <div id="imgs">
           <!-- here you have to add the img tag -->
           <img id="Img1" src="../images/resourceimages/4.png"/>
           <img id="Img2" src="../images/resourceimages/11.jpg"/>
           <img id="Img3" src="../images/resourceimages/12.jpg"/>
           <img id="Img4" src="../images/resourceimages/13.jpg"/>
		   <img id="Img5" src="../images/resourceimages/2.jpg"/>
           <img id="Img6" src="../images/resourceimages/7.jpg"/>
        </div>
        
               
        <!--Here is going to be the left right buttons, the info and the imgs shown-->
        <div id="Snav">
            <!-- here is the circles , showes the current img -->
            <div id="SnavUp">
                <div id="Scircles">
                    <ul>
                        <!-- here you have to add the li tag-->
                        <li id="S0"></li>
                        <li id="S1"></li>
                        <li id="S2"></li>
						<li id="S3"></li>
                        <li id="S4"></li>
                        <li id="S5"></li>
                    </ul>
                </div>
            </div>
            
            <!-- the left and right button -->
            <div id="SnavMiddle">

                <img id="Sleft" src="../images/extra/left.png" onclick="prev()"/>
                <img id="Sright" src="../images/extra/right.png" onclick="next()"/> 
                </div>
                <div id="SnavBottom">
                <!-- here you have to add the p tag-->
                <h2 id="SP4" align="center"><font color="#ffffff" size="12" font-weight: bold;>Looking for </font><br />
                                                                    <font color="#ffffff"size="6">&nbsp &nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp &nbsp a place to host </font><br />
                                                                    <font color="#ffffff"size="10">&nbsp &nbsp &nbsp &nbsp &nbsp YOUR EVENT?</font><br>
                    <input id="search_button" onclick="location.href = 'search.aspx';" type="button" value="Search for the Hall" /></h2>
                </div>
            <div id="scroll" >
                
                    <img class="downButton" src="../images/extra/indicate.png" style="opacity:0.8; "/>
                    <br />
                    <img class="downButton" id="down" src="../images/extra/down.png"/>
            </div>
                <div id="form">
                    <button class="formButton"  ID="Button0"style="float:left; opacity:0;border-radius:4px;" onclick="login()">Login</button>
                    <button class="formButton" ID="Button" style="float:right;opacity:0; border-radius:4px;" onclick="signup()">SignUp</button>
                    <br /><br /><br /><br />
                    <div id="username" style="opacity:0;">
                        <label style="padding-left:30px; color:white; width:60px">Username : </label><br />
                        <input id="Text1" type="text" style="height:30px; width:240px;float:right; margin-right:30px;border-radius:3px; padding-left:10px;"  /><br />
                    </div>
                    <div id="r_username" style="opacity:0;">
                        <label style="padding-left:30px; color:white; width:60px">Username : </label><br />
                        <input id="r_user" type="text" style="height:30px; width:240px;float:right; margin-right:30px;border-radius:3px; padding-left:10px;"  /><br />
                    </div>
                    <div id="password"style="opacity:0;">
                        <label style="padding-left:30px; color:white; width:60px"> Password :</label><br />
                        <input id="Password1" type="password" style="height:30px; width:240px; float:right; margin-right:30px;border-radius:3px;padding-left:10px;" /><br />
                    </div>
                    <div id="r_password"style="opacity:0;">
                        <label style="padding-left:30px; color:white; width:60px"> Password :</label><br />
                        <input id="r_pass" type="password" style="height:30px; width:240px; float:right; margin-right:30px;border-radius:3px;padding-left:10px;" /><br />
                    </div>
                    <div id="r_c_password"style="opacity:0;">
                        <label style="padding-left:30px; color:white; width:60px">Conform Password :</label><br />
                        <input id="r_c_pass" type="password" style="height:30px; width:240px; float:right; margin-right:30px;border-radius:3px;padding-left:10px;" /><br />
                    </div>
                    <form runat="server">
                        <asp:Button class="Button3" ID="Button3"  runat="server" Text="Login" style="margin-left:auto; opacity:0; margin-right:auto;display:block; margin-bottom:0%; visibility:visible" />
                        <asp:Button class="Button3" ID="signup_button"  runat="server" Text="Signup" style="margin-left:auto; opacity:0; margin-right:auto;display:block; margin-bottom:0%; visibility:visible" />
                    
                    </form>
                    
                        <br />
                    
                    <span id="fb" class="fa-stack fa-lg" style="margin-top:15px;margin-left:180px;opacity:0">
                        <i class="fa fa-facebook fa-stack-1x" style="font-size:20px"></i>
                    </span>
                    <span id="twitter" class="fa-stack fa-lg" style="margin-top:15px;opacity:0">
                        <i class="fa fa-twitter fa-stack-1x" style="font-size:20px"></i>
                    </span>
                    
                    
                    
                </div>
            
            <div id="data" style="height:500px">

            </div>
            <!-- the info -->
            <div id="about" style="margin-top:7%; margin-left:10%;margin-right:10%; height:100px">
                        <center><h1><font color="#9c28af" face="product sans">About Us</font></h1><br />
                        <p> <font face="product sans">DemoChimp is Software as a Service (SaaS) that intelligently creates and automates
                             product demos to drive buying consensus and accelerate B2B sales. Our Consensus™ 
                            buying acceleration platform personalizes video and documents to each stakeholder 
                            so the entire buying group can achieve consensus and make a fast, confident purchase 
                            decision. Our Demolytics™ dashboard helps you discover and engage the entire buying group 
                            by gathering demo analytics and tracking who’s involved, what parts of your story are important 
                            to them, and who they shared your demo with. Clients have cut their sales cycles by 68% 
                            and jumped close rates by 44%.</font></p></center>
                    </div>
                    <div id="footer">
                        <br />
                        <p><font face="product sans" color="white" size="3px"><center>75 Hawthirne Street, Suite 550|San Francisco, CA 94105|1.888.CERTAIN (1.888.237.8246)|Office: +1.415.353.5330
                            <br />
                            © 2016 Team Uncodables, All Rights Reserved
                            <br /><br />
                            Privicy Policy | Contact
                            </center>
                            </font><br /><br />
                            <h1 style="margin-left:88%"><font face="product sans" color="white">www.com</font></h1>
                        </p>
            
        </div>
            
        </div>
    </div>
	
		                
		
	</div>
	   
	   
	</body>
		
</html>