<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<script>
function chk1()
{
var stat=true;
if(document.adminLoginForm.email.value.length==0)
{
document.getElementById("loginMsg").innerHTML="Required**";
stat=false;
}
if(document.adminLoginForm.password.value.length==0)
{
document.getElementById("passMsg").innerHTML="Required**";
stat=false;
}
return(stat);
}
function clearLoginMesg()
{
if(document.adminLoginForm.email.value.length>0)
{
document.getElementById("loginMsg").innerHTML=" ";
}
}
function clearPassMesg()
{
if(document.adminLoginForm.password.value.length>0)
{
document.getElementById("passMsg").innerHTML=" ";
}
}

function chk()
{
var stat=true;
if(document.regForm.firstName.value.length==0)
{
document.getElementById("fnameMsg").innerHTML="First Name Required";
stat=false;
}
if(document.regForm.lastName.value.length==0)
{
document.getElementById("lnameMsg").innerHTML="Last Name Required";
stat=false;
}
if(document.regForm.txtAddress.value.length==0)
{
document.getElementById("textAreaMsg").innerHTML="Address Required";
stat=false;
}
if(document.regForm.email.value.length==0)
{
document.getElementById("emailMsg").innerHTML="Email Required";
stat=false;
}
if(document.regForm.verifyEmail.value.length==0)
{
document.getElementById("Re_emailMsg").innerHTML="Email Required";
stat=false;
}
if(document.regForm.password.value.length==0)
{
document.getElementById("passMsg").innerHTML="Password Required";
stat=false;
}
return(stat);
}





function clearFnameMsg()
{
if(document.regForm.firstName.value.length>0)
{
document.getElementById("fnameMsg").innerHTML=" ";
}
}
function clearLnameMsg()
{
if(document.regForm.lastName.value.length>0)
{
document.getElementById("lnameMsg").innerHTML=" ";
}
}
function clearAddressMsg()
{
if(document.regForm.txtAddress.value.length>0)
{
document.getElementById("textAreaMsg").innerHTML=" ";
}
}
function clearEmailMsg()
{
if(document.regForm.email.value.length>0)
{
document.getElementById("emailMsg").innerHTML=" ";
}
}
function clearRe_EmailMsg()
{
if(document.regForm.verifyEmail.value.length>0)
{
document.getElementById("Re_emailMsg").innerHTML=" ";
}
}
function clearPassMsg()
{
if(document.regForm.password.value.length>0)
{
document.getElementById("passMsg").innerHTML=" ";
}
}
</script>

</head>

<body background="image/bg.jpg">
<div class="newuserbody">
<div class="mainnew">
<div class="hader">



</div>
<div class="left">
<div class="had"></div>
<div class="idd">
<div class="user"><h2>User Login</h2></div>
<form action="login.jsp" method="post" name="adminLoginForm" >
<table class="style1" border="0" height="200px">
<tr><td width="250px"><font color="#FFFFFF">Email</font></td></tr>
<tr><td><input name="email" type="email"  maxlength="50" size="30" onkeyup="clearLoginMesg()" /></td><td width="100px"><div id="loginMsg"></td>
</tr>
<tr><td><font color="#FFFFFF">Password</font></td></tr>
<tr><td><input name="password" type="password"  maxlength="50" size="30" onkeyup="clearPassMesg()"/></td><td width="50px"><font color="#FF0000"><div id="passMsg"></font></td></tr>
<tr><td><input name="submit" type="submit" value="Login" onclick="return chk1()"/> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <input name="reset" type="reset" value="Clear" /></td></tr>
</table></form>

</div>
<div class="cupalname"><center><h3>The Happy Couple</h3></center></div>
<div class="cupal">
<div class="cupal2">
<img src="image/s1.jpg" height="150" width="150" />
</div>
<div class="cupal3">
<center><span><h4></h4></span></center>
					<p>I am an optimistic person with a zest for life and a cosmopolitan upbringing. I am currently working in well known IT company in pune. Enjoys sport, painting, music.</p>
</div>

</div>



<div class="cupal">
<div class="cupal2">
<img src="image/s2.jpg" height="150" width="150" />
</div>
<div class="cupal3">
<center><span><h4></h4></span></center>
					<p>Fun loving, loves reading, watching movies, traveling.I am currently working in well known IT company. inborn talent and passion for iterior decoration, art and colour coordination.</p>
</div>

</div>




</div>



<div class="right">
<div class="had2"></div>
<div class="image1">
<div class="image">
<div class="buttop"></div>
<div class="but"><form action="Newuser.jsp">
<input type="submit" value="Register Now" /></form></div>
</div></div>
<div class="had2"></div>
<div class="right2">
<div class="manubox">
<div class="menu">
						 <ul>
							 <li class="active"><a href="index.jsp">Home</a></li> 
							
							  <li><a href="Gallry.html">Gallery</a></li>
							 <li><a href="Contatct.jsp">Contact</a></li>
							 <div class="clear"></div>
						</ul>
					</div>

</div>




<div class="form"><center>
<form  method="post" action="add.jsp">
<table height="1200">
<tbody>
<tr>
<td>First Name</td>
<td>
<input name="firstName" type="text" id="firstName">
</td>
</tr>
<tr>
<td>Last Name</td>
<td>
<input name="lastName" type="text" id="lastName">
</td>
</tr>
<tr>
<td>I am a </td>
<td>
<input id="gender" type="radio" name="gender" checked="checked" value="Male">
<label>Male</label>
<input id="gender_1" type="radio" name="gender" value="Female">
<label>Female</label>
</td>
</tr>
<tr>
<td>Date of Birth</td>
<td>
<input type="date" name="dob"/>
</td>
</tr>
<tr>
<td>Religion</td>
<td>
<select name="religion" id="religion" >
<option value="Religion">Religion</option>
<option value="Christianity">Christianity</option>
<option value="Islam">Islam</option>
<option value="Hinduism">Hinduism</option>
<option value="Sikh">Sikh</option>
</select>
</td>
</tr>
<tr>
<td>
Address
</td>
<td>
<textarea name="address"></textarea>
</td>
</tr>
<tr>
<td>I'm Living In</td>
<td>
<select name="country" id="country">
<option value="Select..." >Country</option>
<option value="USA">USA</option>
<option value="UK">UK</option>
<option value="Canada">Canada</option>
<option value="India">India</option>
<option value="Pakistan">Pakistan</option>
<option value="UAE">UAE</option>
</select>
</td>
</tr>
<tr>
<td>Email Address</td>
<td>
<input  name="email" type="email" id="email">
</td>
</tr>
<tr>
<td>Re-type Email</td>
<td>
<input  name="verifyEmail" type="email" id="verifyEmail">
</td>
</tr>
<tr>
<td>Password</td>
<td>
<input name="password" type="password" id="password">
</td>
</tr>

<tr>
<td>Marital status </td>
        <td>
           <input id="marital_status1" type="radio" name="maritalStatus" value="Single" checked="checked">
           <label>Single</label>
          
           <input id="marital_status2" type="radio" name="maritalStatus" value="Divorced">
           <label>Divorced</label>
          
           <input id="marital_status3" type="radio" name="maritalStatus" value="Widowed">
           <label>Widowed</label>
          
           <input id="marital_status4" type="radio" name="maritalStatus" value="Separated">
           <label>Separated</label>
         </td>
 </tr>
        
 <tr>
        <td>Education</td>
        <td>
         <select name="education" id="education1">
           <option value="">Please select...</option>
                     <option value="High School">High School</option>
                     <option value="Bachelor">Bachelor</option>
                     <option value="Masters">Masters</option>
                     <option value="Associates degree">Associates degree</option>
                     <option value="PhD">PhD</option>
                     <option value="Technical School">Technical School</option>
                     <option value="MD">MD</option>
            </select>
         </td>
      </tr>
      <tr>
       <td>Profession</td>
       <td>      
         <select name="profession" id="profession">
          <option value="0">Please select...</option>
                     <option value="Academic">Academic</option>
                     <option value="Accounting">Accounting</option>
                     <option value="Administrative">Administrative</option>
                     <option value="Air Hostess">Air Hostess</option>
                     <option value="Allied Healtd Care">Allied Healtd Care</option>
                     <option value="Architect">Architect</option>
                     <option value="Armed Forces">Armed Forces</option>
                     <option value="Astrologer">Astrologer</option>
                     <option value="Aviation">Aviation</option>
                     <option value="Banking">Banking</option>
                     <option value="Business Owner">Business Owner</option>
                     <option value="Call Center">Call Center</option>
                     <option value="Chartered Accountant">Chartered Accountant</option>
                     <option value="Choreographer">Choreographer</option>
                     <option value="Clerical">Clerical</option>
                     <option value="College Student">College Student</option>
                     <option value="Company Secretary">Company Secretary</option>
                     <option value="Construction">Construction</option>
                     <option value="Consultant">Consultant</option>
                     <option value="Customer Services">Customer Services</option>
                     <option value="Economist">Economist</option>
                     <option value="Engineer">Engineer</option>
                     <option value="Event Management">Event Management</option>
                     <option value="Executive">Executive</option>
                     <option value="Fashion Design">Fashion Design</option>
                     <option value="Finance">Finance </option>
                     <option value="Food Services-Hotel">Food Services-Hotel</option>
                     <option value="Government">Government</option>
                     <option value="Graphic Designer">Graphic Designer</option>
                     <option value="Human Resource">Human Resource</option>
                     <option value="IT Professional">IT Professional</option>
                     <option value="Interior Designer">Interior Designer</option>
                     <option value="Journalist">Journalist</option>
                     <option value="Lawyer">Lawyer</option>
                     <option value="Make up Artist">Make up Artist</option>
                     <option value="Manager">Manager</option>
                     <option value="Media">Media</option>
                     <option value="Medical - Dentist">Medical - Dentist</option>
                     <option value="Medical - Doctor">Medical - Doctor</option>
                     <option value="Medical Transcriptionist">Medical Transcriptionist</option>
                     <option value="Merchandiser">Merchandiser</option>
                     <option value="Merchant Navy">Merchant Navy</option>
                     <option value="Microbiologist">Microbiologist</option>
                     <option value="Modeling/Acting">Modeling/Acting</option>
                     <option value="NGO">NGO</option>
                     <option value="Not Working">Not Working</option>
                     <option value="Nurse">Nurse</option>
                     <option value="Nutritionist">Nutritionist</option>
                     <option value="Others">Others</option>
                     <option value="Pharmacist">Pharmacist</option>
                     <option value="Photographer">Photographer</option>
                     <option value="Physiotderapist">Physiotderapist</option>
                     <option value="Pilot">Pilot</option>
                     <option value="Professor">Professor </option>
                     <option value="Psychologist">Psychologist</option>
                     <option value="Research Associate">Research Associate</option>
                     <option value="Retailer">Retailer</option>
                     <option value="Sales/Marketing">Sales/Marketing</option>
                     <option value="Scientist">Scientist</option>
                     <option value="Self Employed">Self Employed</option>
                     <option value="Software Profession">Software Profession</option>
                     <option value="Sportsman">Sportsman</option>
                     <option value="Teacher">Teacher</option>
                     <option value="Technical">Technical</option>
                     <option value="Telecom">Telecom</option>
                     <option value="tderapist">tderapist</option>
                     <option value="Hotel Management">Hotel Management</option>
                     <option value="Unemployed">Unemployed</option>
                     <option value="Web Designer">Web Designer</option>
                     <option value="Writer">Writer</option>
                   </select>
      </td>
      </tr>
      
      <tr>
<td>
Salary
</td>
<td>
<select name="salary">
<option value="<5000">&lt;5000</option>
<option value="5000-10000">5000-10000</option>
<option value="10000-25000">10000-25000</option>
<option value="25000-50000">25000-50000</option>
<option value="50000-100000">50000-100000</option>
<option value="100000<">100000&gt;</option>
</select>
</td>
</tr>
      
	 <tr>
 <td>Height</td>   
   <td>
    <select name="height" id="height">
	         <option value="4ft 5inc - 135cms">4ft 5inc - 135cms</option>
             <option value="4ft 6inc - 137cms">4ft 6inc - 137cms</option>
             <option value="4ft  7inc - 140cms">4ft  7inc - 140cms</option>
             <option value="4ft 8inc -  142cms">4ft 8inc -  142cms</option>
             <option value="4ft 9inc - 145cms">4ft 9inc - 145cms</option>
             <option value="4ft 10inc - 147cms">4ft 10inc - 147cms</option>
             <option value="4ft 11inc - 150cms">4ft 11inc - 150cms</option>
             <option value="5ft - 152cms">5ft - 152cms</option>
             <option value="5ft 1inc - 155cms">5ft 1inc - 155cms</option>
             <option value="5ft 2inc - 157cms">5ft 2inc - 157cms</option>
             <option value="5ft 3inc - 160cms">5ft 3inc - 160cms</option>
             <option value="5ft 4inc - 162cms">5ft 4inc - 162cms</option>
             <option value="5ft 5inc - 165cms">5ft 5inc - 165cms</option>
             <option value="5ft 6inc - 167cms">5ft 6inc - 167cms</option>
             <option value="5ft 7inc - 170cms">5ft 7inc - 170cms</option>
             <option value="5ft 8inc - 172cms">5ft 8inc - 172cms</option>
             <option value="5ft 9inc - 175cms">5ft 9inc - 175cms</option>
             <option value="5ft 10inc - 177cms">5ft 10inc - 177cms</option>
             <option value="5ft 11inc - 180cms">5ft 11inc - 180cms</option>
             <option value="6ft - 183cms">6ft - 183cms</option>
             <option value="6ft 1inc - 186cms">6ft 1inc - 186cms</option>
             <option value="6ft 2inc - 188cms">6ft 2inc - 188cms</option>
          </select>
   </td>
   </tr>
   <tr>
   <td>Weight</td>
   <td>
     <select name="weight" id="weight">
	       <option value="44kg - 97lbs">44kg - 97lbs</option>
           <option value="45kg - 99lbs">45kg - 99lbs</option>
           <option value="46kg - 101lbs">46kg - 101lbs</option>
           <option value="47kg - 104lbs">47kg - 104lbs</option>
           <option value="48kg - 106lbs">48kg - 106lbs</option>
           <option value="49kg - 108lbs">49kg - 108lbs</option>
           <option value="50kg - 110lbs">50kg - 110lbs</option>
           <option value="51kg - 112lbs">51kg - 112lbs</option>
           <option value="52kg - 115lbs">52kg - 115lbs</option>
           <option value="53kg - 117lbs">53kg - 117lbs</option>
           <option value="54kg - 119lbs">54kg - 119lbs</option>
           <option value="55kg - 121lbs">55kg - 121lbs</option>
           <option value="56kg - 123lbs">56kg - 123lbs</option>
           <option value="57kg - 126lbs">57kg - 126lbs</option>
           <option value="58kg - 128lbs">58kg - 128lbs</option>
           <option value="59kg - 130lbs">59kg - 130lbs</option>
           <option value="60kg - 132lbs">60kg - 132lbs</option>
           <option value="61kg - 134lbs">61kg - 134lbs</option>
           <option value="62kg - 137lbs">62kg - 137lbs</option>
           <option value="63kg - 139lbs">63kg - 139lbs</option>
           <option value="64kg - 141lbs">64kg - 141lbs</option>
           <option value="65kg - 143lbs">65kg - 143lbs</option>
           <option value="66kg - 146lbs">66kg - 146lbs</option>
           <option value="67kg - 148lbs">67kg - 148lbs</option>
           <option value="68kg - 150lbs">68kg - 150lbs</option>
           <option value="69kg - 152lbs">69kg - 152lbs</option>
           <option value="70kg - 154lbs">70kg - 154lbs</option>
           <option value="71kg - 157lbs">71kg - 157lbs</option>
           <option value="72kg - 159lbs">72kg - 159lbs</option>
           <option value="73kg - 161lbs">73kg - 161lbs</option>
           <option value="74kg - 163lbs">74kg - 163lbs</option>
           <option value="75kg - 165lbs">75kg - 165lbs</option>
           <option value="76kg - 168lbs">76kg - 168lbs</option>
           <option value="77kg - 170lbs">77kg - 170lbs</option>
           <option value="78kg - 172lbs">78kg - 172lbs</option>
           <option value="79kg - 174lbs">79kg - 174lbs</option>
           <option value="80kg - 176lbs">80kg - 176lbs</option>
           <option value="81kg - 179lbs">81kg - 179lbs</option>
           <option value="82kg - 181lbs">82kg - 181lbs</option>
           <option value="83kg - 183lbs">83kg - 183lbs</option>
           <option value="84kg - 185lbs">84kg - 185lbs</option>
           <option value="85kg - 187lbs">85kg - 187lbs</option>
           <option value="86kg - 190lbs">86kg - 190lbs</option>
           <option value="87kg - 192lbs">87kg - 192lbs</option>
           <option value="88kg - 194lbs">88kg - 194lbs</option>
           <option value="89kg - 196lbs">89kg - 196lbs</option>
           <option value="90kg - 198lbs">90kg - 198lbs</option>
           <option value="91kg - 201lbs">91kg - 201lbs</option>
           <option value="92kg - 203lbs">92kg - 203lbs</option>
           <option value="93kg - 205lbs">93kg - 205lbs</option>
           <option value="94kg - 207lbs">94kg - 207lbs</option>
           <option value="95kg - 209lbs">95kg - 209lbs</option>
           <option value="96kg - 212lbs">96kg - 212lbs</option>
           <option value="97kg - 214lbs">97kg - 214lbs</option>
           <option value="98kg - 216lbs">98kg - 216lbs</option>
           <option value="100kg - 220lbs">100kg - 220lbs</option>
          </select>
    </td>
   </tr>
   <tr>
    <td>Built</td>
    <td>
     <select name="built" id="built">
	        <option value="Slim">Slim</option>
            <option value="Average">Average</option>
            <option value="Atdletic">Atdletic</option>
            <option value="Heavy">Heavy</option>
           </select>
     </td>
    </tr>
    <tr>
     <td>Complexion</td>
     <td>
      <select name="complexion" id="complexion">
	         <option value="Fair">Fair</option>
             <option value="Medium">Medium</option>
             <option value="Dark">Dark</option>
             <option value="Wheatish">Wheatish</option>
            </select>
     </td>
    </tr>
    <tr>
    <td>Eye color</td>        
    <td>
     <select name="eyeColor" id="eyeColor">
	       <option value="Black">Black</option>
           <option value="Brown">Brown</option>
           <option value="Light Brown">Light Brown</option>
           <option value="Blue">Blue</option>
           <option value="Green">Green</option>
           <option value="Hazel">Hazel</option>
           <option value="Any color">Any color</option>
          </select>
    </td>
    </tr>
    <tr>
     <td>Hair color</td>
     <td>
      <select name="hairColor" id="hairColor">
	         <option value="Black">Black</option>
             <option value="Brown">Brown</option>
             <option value="Salt and Pepper">Salt and Pepper</option>
             <option value="Silver White">Silver White</option>
             <option value="Any Color">Any Color</option>
             <option value="Blonde">Blonde</option>
             <option value="Red">Red</option>
             <option value="Bald">Bald</option>
            </select>
     </td>
    </tr>
    <tr>
     <td>Diet</td>
     <td align="left">
      <select name="diet" id="diet">
	         <option value="Veg">Veg</option>
             <option value="Non-Veg">Non-Veg</option>
             <option value="Jain Food">Jain Food</option>
            </select>
     </td>
    </tr>
    <tr>
    <td>Drink</td>
    <td>
    <select name="drinking" id="drinking">
	    <option value="Do not drink">Do not drink</option>
        <option value="Occasionally">Occasionally</option>
        <option value="Regularly">Regularly</option>
        </select>
    </td>
    </tr>
    <tr>
    <td>Smoke</td>
    <td>
     <select name="smoking" id="smoking">
	      <option value="Do not smoke">Do not smoke</option>
	      <option value="Occasionally">Occasionally</option>
	      <option value="Regularly">Regularly</option>
	      </select>
    </td>
    </tr>
    
        <tr>
    <td>
    Preferred Height
    </td>
    <td>
        <select name="pHeight" id="height">
	         <option value="4ft 5inc - 135cms">4ft 5inc - 135cms</option>
             <option value="4ft 6inc - 137cms">4ft 6inc - 137cms</option>
             <option value="4ft  7inc - 140cms">4ft  7inc - 140cms</option>
             <option value="4ft 8inc -  142cms">4ft 8inc -  142cms</option>
             <option value="4ft 9inc - 145cms">4ft 9inc - 145cms</option>
             <option value="4ft 10inc - 147cms">4ft 10inc - 147cms</option>
             <option value="4ft 11inc - 150cms">4ft 11inc - 150cms</option>
             <option value="5ft - 152cms">5ft - 152cms</option>
             <option value="5ft 1inc - 155cms">5ft 1inc - 155cms</option>
             <option value="5ft 2inc - 157cms">5ft 2inc - 157cms</option>
             <option value="5ft 3inc - 160cms">5ft 3inc - 160cms</option>
             <option value="5ft 4inc - 162cms">5ft 4inc - 162cms</option>
             <option value="5ft 5inc - 165cms">5ft 5inc - 165cms</option>
             <option value="5ft 6inc - 167cms">5ft 6inc - 167cms</option>
             <option value="5ft 7inc - 170cms">5ft 7inc - 170cms</option>
             <option value="5ft 8inc - 172cms">5ft 8inc - 172cms</option>
             <option value="5ft 9inc - 175cms">5ft 9inc - 175cms</option>
             <option value="5ft 10inc - 177cms">5ft 10inc - 177cms</option>
             <option value="5ft 11inc - 180cms">5ft 11inc - 180cms</option>
             <option value="6ft - 183cms">6ft - 183cms</option>
             <option value="6ft 1inc - 186cms">6ft 1inc - 186cms</option>
             <option value="6ft 2inc - 188cms">6ft 2inc - 188cms</option>
          </select>
    </td>
    </tr>

    <tr>
    <td>
    Preferred City
    </td>
    <td>
    <input type="text" name="pCity">
    </td>
    </tr>

    <tr>
    <td>
    Preferred Salary
    </td>
    <td>
    <select name="pSalary">
<option value="<5000">&lt;5000</option>
<option value="5000-10000">5000-10000</option>
<option value="10000-25000">10000-25000</option>
<option value="25000-50000">25000-50000</option>
<option value="50000-100000">50000-100000</option>
<option value="100000<">100000&gt;</option>
</select>
    
    </td>
    </tr>
    
   <tr>
   <td>
   <input type="submit" value="Register">
   </td>
    <td>
	<input type="reset" value="Clear">
   </td>
   </tr>
</tbody>
</table>
</form>
</div>
</div>

</div>
</div>
<div class="futer"></div>
</body>
</html>
