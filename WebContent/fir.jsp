<!DOCTYPE html>
<html>
<head>
<title>FIR</title>
<h1>FIRST INFORMATION RECORD</h1>

</head>
<body>
<SCRIPT type="JavaScript">
  function fir()
  {
  document.getElementById("B1").action="fir";
  document.getElementById("B1").submit();
  }
 </SCRIPT>	

<form id="gothere" action="fir" method="post" >

  <div>
  <tr>
    <td>District</td>
     <td><input type="text"  name="dist" value=""></td>
     </tr>
     </div>
      <div>
  <tr>
    <td>Police Station</td>
     <td><input type="text"  name="ps" value=""></td>
     </tr>
     </div>
      <div>
  <tr>
    <td>Date</td>
     <td><input type="date"  name="date" value=""></td>
     </tr>
     </div> 
     <div>
  <tr>
    <td>Fir No.</td>
     <td><input type="text"  name="fir_no" value=""></td>
     </tr>
     </div>
   <div>
  <tr>
    <td><h2>Act & section</h2></td>
     <td><input type="text"  name="act" value=""></td>
     </tr>
     </div>
     <div>
     <h3>a) Occurrence of Offence :</h3>
     </div>
      <div>
  <tr>
    <td>Day</td>
     <td><input type="text" name="day" value=""></td>
     </tr>
     </div>
      <div>
  <tr>
  
    <td>Date From</td>
     <td><input type="date" name="date_from" value=""></td>
     
     </tr>
     </div>
      <div>
  <tr>
    <td>Date To</td>
     <td><input type="date"  name="date_to" value=""></td>
     </tr>
     </div>
      <div>
  <tr>
    <td>Time</td>
     <td><input type="time"  name="time" value=""></td>
     </tr>
     </div>
     <div>
     <h3>b) Information recieved at: </h3>
     </div>
     <div>
  <tr>
    <td>Date</td>
     <td><input type="date"  name="date_rec" value=""></td>
     </tr>
     </div>
      <div>
  <tr>
    <td>Time</td>
     <td><input type="time"  name="time_rec" value=""></td>
     </tr>
     </div>
      <div>
  <tr>
    <td><h2>Type of information</h2></td>
     <td><input type="text"  name="type_info" value=""></td>
     </tr>
     </div>
      <div>
  <tr>
    <td>Place</td>
     <td><input type="text"  name="place" value=""></td>
     </tr>
     </div>
      <div>
  <tr>
    <td>Street/Village</td>
     <td><input type="text"  name="village" value=""></td>
     </tr>
     </div>
      <div>
  <tr>
    <td>Area</td>
     <td><input type="text"  name="area" value=""></td>
     </tr>
     </div>
      <div>
  <tr>
    <td>City</td>
     <td><input type="text"  name="city" value=""></td>
     </tr>
     </div>
      <div>
  <tr>
    <td>District</td>
     <td><input type="text"  name="dist1" value=""></td>
     </tr>
     </div>
      <div>
  <tr>
    <td>State</td>
     <td><input type="text"  name="state" value=""></td>
     </tr>
     </div>
     <div><h2>COMPLAINANT</h2></div>
      <div>
  <tr>
    <td>a) Name</td>
     <td><input type="text"  name="name" value=""></td>
     </tr>
     </div>
      <div>
  <tr>
    <td>b) Father's name/Husband's name</td>
     <td><input type="text"  name="father" value=""></td>
     </tr>
     </div>
      <div>
  <tr>
    <td>c) Date Of Birth</td>
     <td><input type="date"  name="dob" value=""></td>
     </tr>
     </div>
      <div>
  <tr>
    <td>d) Nationality</td>
     <td><input type="text"  name="nationality" value=""></td>
     </tr>
     </div>
      <div>
  <tr>
    <td>e) Passport no</td>
     <td><input type="text"  name="passport" value=""></td>
     </tr>
     </div>
      <div>
  <tr>
    <td>f) Occupation</td>
     <td><input type="text"  name="occupation" value=""></td>
     </tr>
     </div>
      <div>
  <tr>
    <td>g) Address</td>
     <td><input type="text"  name="address" value=""></td>
     </tr>
     </div>
     <div><h2>INVESTIGATOR</h2></div>
      <div>
  <tr>
    <td>Investigator Name</td>
     <td><input type="text"  name="inv_name" value=""></td>
     </tr>
     </div>
     <div>
  <tr>
    <td>Investigator rank</td>
     <td><input type="text"  name="inv_rank" value=""></td>
     </tr>
     </div>
     <div>
  <tr>
    <td>Investigator Id</td>
     <td><input type="text"  name="inv_id" value=""></td>
     </tr>
     </div>
     </table>
<b> 
   <input type="submit" value="     Submit     " name="B1" onclick= "fir()" tabindex="12">
   <td><input type="Reset" value="    reset    "></td>
   </b> 
   </form>
   
    </body>
  </html>