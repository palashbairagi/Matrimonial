<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<script>
function chk()
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
<form action="adminLogin.jsp" method="get" name="adminLoginForm" >
<table class="style1" border="0" height="200px">
<tr><td width="250px"><font color="#FFFFFF">Email</font></td></tr>
<tr><td><input name="email" type="email"  maxlength="50" size="30" onkeyup="clearLoginMesg()" /></td><td width="100px"><div id="loginMsg"></td>
</tr>
<tr><td><font color="#FFFFFF">Password</font></td></tr>
<tr><td><input name="password" type="password"  maxlength="50" size="30" onkeyup="clearPassMesg()"/></td><td width="50px"><font color="#FF0000"><div id="passMsg"></font></td></tr>
<tr><td><input name="submit" type="submit" value="Login" onclick="return chk()"/> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <input name="reset" type="reset" value="Clear" /></td></tr>
</table></form>

</div>
<div class="cupalname"><center><h3>The Happy Couple</h3></center></div>
<div class="cupal">
<div class="cupal2">
<img src="image/s1.jpg" height="150" width="150" />
</div>
<div class="cupal3">
<center><span><h4>Sanyam Choudhary</h4></span></center>
					<p>I am an optimistic person with a zest for life and a cosmopolitan upbringing. I am currently working in well known IT company in pune. Enjoys sport, painting, music.</p>
</div>

</div>



<div class="cupal">
<div class="cupal2">
<img src="image/s2.jpg" height="150" width="150" />
</div>
<div class="cupal3">
<center><span><h4>Shardha Parmar</h4></span></center>
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
							 <li class="active"><a href="index.html">Home</a></li> 
							 <li><a href="About.jsp">About</a></li>
							 <li><a href="services.html">Services</a></li>
							  <li><a href="Gallry.html">Gallery</a></li>
							 <li><a href="Contatct.jsp">Contact</a></li>
							 <div class="clear"></div>
						</ul>
					</div>

</div>




<div class="form"><center>
<form  method="post" name="regForm">
<table border="0" height="1200px">

<tr>
<td>First Name</td>
<td>
<input name="firstName" type="text" id="firstName" onkeyup="clearFnameMsg()" >
</td>
<td width="200px">
<div id="fnameMsg"/>
</td>
</tr>
<tr>
<td>Last Name</td>
<td>
<input name="lastName" type="text" id="lastName" onkeyup="clearLnameMsg()">
</td>
<td>
<div id="lnameMsg"/>
</td>
</tr>
<tr>
<td>I am a </td>
<td>
<input id="gender" type="radio" name="gender" checked="checked" value="1">
<label>Male</label>
<input id="gender_1" type="radio" name="gender" value="0">
<label>Female</label>
</td>
</tr>
<tr>
<td>Date of Birtd</td>
<td>
<select name="dobM" id="dobM" title="your montd of birtd...">
<option selected="selected" value="0" >Montd</option>
<option value="01">Jan</option>
<option value="02">Feb</option>
<option value="03">Mar</option>
<option value="04">Apr</option>
<option value="05">May</option>
<option value="06">Jun</option>
<option value="07">Jul</option>
<option value="08">Aug</option>
<option value="09">Sep</option>
<option value="10">Oct</option>
<option value="11">Nov</option>
<option value="12">Dec</option>
</select>
<select name="dobD" id="dobD" title="your day of birtd...">
<option selected="selected" value="DD" >Day</option>
<option value="01">01</option>
<option value="02">02</option>
<option value="03">03</option>
<option value="04">04</option>
<option value="05">05</option>
<option value="06">06</option>
<option value="07">07</option>
<option value="08">08</option>
<option value="09">09</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>
<select name="dobY" id="dobY" title="your year of birtd...">
<option selected="selected" value="YYYY">Year</option>
<option value="1997">1997</option>
<option value="1996">1996</option>
<option value="1995">1995</option>
<option value="1994">1994</option>
<option value="1993">1993</option>
<option value="1992">1992</option>
<option value="1991">1991</option>
<option value="1990">1990</option>
<option value="1989">1989</option>
<option value="1988">1988</option>
<option value="1987">1987</option>
<option value="1986">1986</option>
<option value="1985">1985</option>
<option value="1984">1984</option>
<option value="1983">1983</option>
<option value="1982">1982</option>
<option value="1981">1981</option>
<option value="1980">1980</option>
<option value="1979">1979</option>
<option value="1978">1978</option>
<option value="1977">1977</option>
<option value="1976">1976</option>
<option value="1975">1975</option>
<option value="1974">1974</option>
<option value="1973">1973</option>
<option value="1972">1972</option>
<option value="1971">1971</option>
<option value="1970">1970</option>
<option value="1969">1969</option>
<option value="1968">1968</option>
<option value="1967">1967</option>
<option value="1966">1966</option>
<option value="1965">1965</option>
<option value="1964">1964</option>
<option value="1963">1963</option>
<option value="1962">1962</option>
<option value="1961">1961</option>
<option value="1960">1960</option>
<option value="1959">1959</option>
<option value="1958">1958</option>
<option value="1957">1957</option>
<option value="1956">1956</option>
<option value="1955">1955</option>
<option value="1954">1954</option>
<option value="1953">1953</option>
<option value="1952">1952</option>
<option value="1951">1951</option>
<option value="1950">1950</option>
<option value="1949">1949</option>
<option value="1948">1948</option>
<option value="1947">1947</option>
<option value="1946">1946</option>
<option value="1945">1945</option>
<option value="1944">1944</option>
<option value="1943">1943</option>
<option value="1942">1942</option>
<option value="1941">1941</option>
<option value="1940">1940</option>
<option value="1939">1939</option>
<option value="1938">1938</option>
<option value="1937">1937</option>
<option value="1936">1936</option>
<option value="1935">1935</option>
<option value="1934">1934</option>
<option value="1933">1933</option>
<option value="1932">1932</option>
</select>
</td>
</tr>
<tr>
<td>Religion</td>
<td>
<select name="religion" id="religion" >
<option value="0">Religion</option>
<option value="1">Christianity</option>
<option value="2">Islam</option>
<option value="3">Hinduism</option>
<option value="4">Sikh</option>
</select>
</td>
</tr>
<tr>
<td>
Address
</td>
<td>
<textarea name="txtAddress" onkeyup="clearAddressMsg()"></textarea>
</td>
<td>
<div id="textAreaMsg"/>
</td>
</tr>
<tr>
<td>I'm Living In</td>
<td>
<select name="country" id="country">
<option value="Select..." >Country</option>
<option value="1">USA</option>
<option value="2">UK</option>
<option value="3">Canada</option>
<option value="4">India</option>
<option value="5">Pakistan</option>
<option value="6">UAE</option>
</select>
</td>
</tr>
<tr>
<td>Email Address</td>
<td>
<input  name="email" type="email" id="email" onkeyup="clearEmailMsg()">
</td>
<td>
<div id="emailMsg"/>
</td>
</tr>
<tr>
<td>Re-type Email</td>
<td>
<input  name="verifyEmail" type="email" id="verifyEmail" onkeyup="clearRe_EmailMsg()">
</td>
<td>
<div id="Re_emailMsg"/>
</td>
</tr>
<tr>
<td>Password</td>
<td>
<input name="password" type="password" id="password" onkeyup="clearPassMsg()">
</td>
<td>
<div id="passMsg"/>
</td>
</tr>

<tr>
<td>Marital status </td>
        <td>
           <input id="marital_status1" type="radio" name="maritalStatus" value="1" checked="checked">
           <label>Single</label>
          
           <input id="marital_status2" type="radio" name="maritalStatus" value="2">
           <label>Divorced</label>
          
           <input id="marital_status3" type="radio" name="maritalStatus" value="3">
           <label>Widowed</label>
          
           <input id="marital_status4" type="radio" name="maritalStatus" value="4">
           <label>Separated</label>
         </td>
 </tr>
        
 <tr>
        <td>Education</td>
        <td>
         <select name="education" id="education1">
           <option value="0">Please select...</option>
                     <option value="1">High School</option>
                     <option value="2">Bachelor</option>
                     <option value="3">Masters</option>
                     <option value="4">Associates degree</option>
                     <option value="5">PhD</option>
                     <option value="6">Technical School</option>
                     <option value="7">MD</option>
            </select>
         </td>
      </tr>
      <tr>
       <td>Profession</td>
       <td>      
         <select name="occupation" id="occupation">
          <option value="0">Please select...</option>
                     <option value="1">Academic</option>
                     <option value="2">Accounting</option>
                     <option value="22">Administrative</option>
                     <option value="48">Air Hostess</option>
                     <option value="70">Allied Healtd Care</option>
                     <option value="29">Architect</option>
                     <option value="3">Armed Forces</option>
                     <option value="45">Astrologer</option>
                     <option value="60">Aviation</option>
                     <option value="5">Banking</option>
                     <option value="4">Business Owner</option>
                     <option value="57">Call Center</option>
                     <option value="49">Chartered Accountant</option>
                     <option value="39">Choreographer</option>
                     <option value="6">Clerical</option>
                     <option value="23">College Student</option>
                     <option value="37">Company Secretary</option>
                     <option value="24">Construction</option>
                     <option value="54">Consultant</option>
                     <option value="51">Customer Services</option>
                     <option value="66">Economist</option>
                     <option value="7">Engineer</option>
                     <option value="58">Event Management</option>
                     <option value="8">Executive</option>
                     <option value="13">Fashion Design</option>
                     <option value="25">Finance </option>
                     <option value="21">Food Services-Hotel</option>
                     <option value="20">Government</option>
                     <option value="32">Graphic Designer</option>
                     <option value="9">Human Resource</option>
                     <option value="52">IT Professional</option>
                     <option value="40">Interior Designer</option>
                     <option value="50">Journalist</option>
                     <option value="10">Lawyer</option>
                     <option value="42">Make up Artist</option>
                     <option value="11">Manager</option>
                     <option value="12">Media</option>
                     <option value="16">Medical - Dentist</option>
                     <option value="15">Medical - Doctor</option>
                     <option value="64">Medical Transcriptionist</option>
                     <option value="59">Merchandiser</option>
                     <option value="41">Merchant Navy</option>
                     <option value="62">Microbiologist</option>
                     <option value="14">Modeling/Acting</option>
                     <option value="56">NGO</option>
                     <option value="36">Not Working</option>
                     <option value="30">Nurse</option>
                     <option value="55">Nutritionist</option>
                     <option value="27">Otders</option>
                     <option value="33">Pharmacist</option>
                     <option value="46">Photographer</option>
                     <option value="69">Physiotderapist</option>
                     <option value="34">Pilot</option>
                     <option value="28">Professor </option>
                     <option value="35">Psychologist</option>
                     <option value="67">Research Associate</option>
                     <option value="65">Retailer</option>
                     <option value="17">Sales/Marketing</option>
                     <option value="43">Scientist</option>
                     <option value="61">Self Employed</option>
                     <option value="18">Software Profession</option>
                     <option value="63">Sportsman</option>
                     <option value="44">Teacher</option>
                     <option value="26">Technical</option>
                     <option value="53">Telecom</option>
                     <option value="31">tderapist</option>
                     <option value="38">Tourism &amp; Hotel Management</option>
                     <option value="47">Unemployed</option>
                     <option value="68">Web Designer</option>
                     <option value="19">Writer</option>
                   </select>
      </td>
	 </tr>
 <td>Height</td>   
   <td>
    <select name="height" id="height">
	         <option value="1">4ft 5inc - 135cms</option>
             <option value="2">4ft 6inc - 137cms</option>
             <option value="3">4ft  7inc - 140cms</option>
             <option value="4">4ft 8inc -  142cms</option>
             <option value="5">4ft 9inc - 145cms</option>
             <option value="6">4ft 10inc - 147cms</option>
             <option value="7">4ft 11inc - 150cms</option>
             <option value="8">5 ft - 152cms</option>
             <option value="9">5ft 1inc - 155cms</option>
             <option value="10">5ft 2inc - 157cms</option>
             <option value="11">5ft 3inc - 160cms</option>
             <option value="12">5ft 4inc - 162cms</option>
             <option value="13">5ft 5inc - 165cms</option>
             <option value="14">5ft 6inc - 167cms</option>
             <option value="15">5ft 7inc - 170cms</option>
             <option value="16">5ft 8inc - 172cms</option>
             <option value="17">5ft 9inc - 175cms</option>
             <option value="18">5ft 10inc - 177cms</option>
             <option value="19">5ft 11inc - 180cms</option>
             <option value="20">6ft - 183cms</option>
             <option value="21">6ft 1inc - 186cms</option>
             <option value="22">6ft 2inc - 188cms</option>
          </select>
   </td>
   </tr>
   <tr>
   <td>Weight</td>
   <td>
     <select name="weight" id="weight">
	       <option value="1">44kg - 97lbs</option>
           <option value="2">45kg - 99lbs</option>
           <option value="3">46kg - 101lbs</option>
           <option value="4">47kg - 104lbs</option>
           <option value="5">48kg - 106lbs</option>
           <option value="6">49kg - 108lbs</option>
           <option value="7">50kg - 110lbs</option>
           <option value="8">51kg - 112lbs</option>
           <option value="9">52kg - 115lbs</option>
           <option value="10">53kg - 117lbs</option>
           <option value="11">54kg - 119lbs</option>
           <option value="12">55kg - 121lbs</option>
           <option value="13">56kg - 123lbs</option>
           <option value="14">57kg - 126lbs</option>
           <option value="15">58kg - 128lbs</option>
           <option value="16">59kg - 130lbs</option>
           <option value="17">60kg - 132lbs</option>
           <option value="18">61kg - 134lbs</option>
           <option value="19">62kg - 137lbs</option>
           <option value="20">63kg - 139lbs</option>
           <option value="21">64kg - 141lbs</option>
           <option value="22">65kg - 143lbs</option>
           <option value="23">66kg - 146lbs</option>
           <option value="24">67kg - 148lbs</option>
           <option value="25">68kg - 150lbs</option>
           <option value="26">69kg - 152lbs</option>
           <option value="27">70kg - 154lbs</option>
           <option value="28">71kg - 157lbs</option>
           <option value="29">72kg - 159lbs</option>
           <option value="30">73kg - 161lbs</option>
           <option value="31">74kg - 163lbs</option>
           <option value="32">75kg - 165lbs</option>
           <option value="33">76kg - 168lbs</option>
           <option value="34">77kg - 170lbs</option>
           <option value="35">78kg - 172lbs</option>
           <option value="36">79kg - 174lbs</option>
           <option value="37">80kg - 176lbs</option>
           <option value="38">81kg - 179lbs</option>
           <option value="39">82kg - 181lbs</option>
           <option value="40">83kg - 183lbs</option>
           <option value="41">84kg - 185lbs</option>
           <option value="42">85kg - 187lbs</option>
           <option value="43">86kg - 190lbs</option>
           <option value="44">87kg - 192lbs</option>
           <option value="45">88kg - 194lbs</option>
           <option value="46">89kg - 196lbs</option>
           <option value="47">90kg - 198lbs</option>
           <option value="48">91kg - 201lbs</option>
           <option value="49">92kg - 203lbs</option>
           <option value="50">93kg - 205lbs</option>
           <option value="51">94kg - 207lbs</option>
           <option value="52">95kg - 209lbs</option>
           <option value="53">96kg - 212lbs</option>
           <option value="54">97kg - 214lbs</option>
           <option value="55">98kg - 216lbs</option>
           <option value="56">100kg - 220lbs</option>
          </select>
    </td>
   </tr>
   <tr>
    <td>Built</td>
    <td>
     <select name="built" id="built">
	        <option value="1">Slim</option>
            <option value="2">Average</option>
            <option value="3">Atdletic</option>
            <option value="4">Heavy</option>
            <option value="5">Tell you later</option>
           </select>
     </td>
    </tr>
    <tr>
     <td>Complexion</td>
     <td>
      <select name="complexion" id="complexion">
	         <option value="1">Fair</option>
             <option value="2">Medium</option>
             <option value="3">Dark</option>
             <option value="4">Wheatish</option>
            </select>
     </td>
    </tr>
    <tr>
    <td>Eye color</td>        
    <td>
     <select name="eye_color" id="eye_color">
	       <option value="1">Black</option>
           <option value="2">Brown</option>
           <option value="3">Light Brown</option>
           <option value="4">Blue</option>
           <option value="5">Green</option>
           <option value="6">Hazel</option>
           <option value="7">Any color</option>
          </select>
    </td>
    </tr>
    <tr>
     <td>Hair color</td>
     <td>
      <select name="hair_color" id="hair_color">
	         <option value="1">Black</option>
             <option value="2">Brown</option>
             <option value="3">Salt and Pepper</option>
             <option value="4">Silver White</option>
             <option value="5">Any Color</option>
             <option value="6">Blonde</option>
             <option value="7">Red</option>
             <option value="8">Bald</option>
            </select>
     </td>
    </tr>
    <tr>
     <td>Diet</td>
     <td align="left">
      <select name="diet" id="diet">
	         <option value="2">Veg</option>
             <option value="3">Non-Veg</option>
             <option value="5">Jain Food</option>
            </select>
     </td>
    </tr>
    <tr>
    <td>Drink</td>
    <td>
    <select name="drinking" id="drinking">
	    <option value="1">Do not drink</option>
        <option value="2">Drink socially/occasionally</option>
        <option value="3">Drink regularly</option>
        </select>
    </td>
    </tr>
    <tr>
    <td>Smoke</td>
    <td>
     <select name="smoking" id="smoking">
	      <option value="1">Do not smoke</option>
	      <option value="2">Smoke socially/occasionally</option>
	      <option value="3">Smoke regularly</option>
	      </select>
    </td>
    </tr>
   <tr>
   <td>
   <input type="submit" value="Register" onclick="return chk()">
   </td>
    <td>
	<input type="reset" value="Clear">
   </td>
   </tr>

</table>
</form>

</div>
</div>

</div>
</div>
<div class="futer"></div>
</body>
</html>
