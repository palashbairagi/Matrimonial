<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search</title>
</head>
<body>
<form action="viewFemale.jsp">
<table>
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
 <td>
 City
 </td>
 <td>
 <input type="text" name="city">
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
 <td>
 <input type="submit" name="Search" />
 </td>
 </tr>
</table>
</form>
</body>
</html>