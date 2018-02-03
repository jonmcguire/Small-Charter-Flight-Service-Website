
<html>
	<head>
	<title>
		Employees
	</title>
	</head>

	<body>
		<center><h1><b>Add Employee</b></h1></center>
		<form method="POST" action="add_employeeprocess.php" class="form-style-1">
			<fieldset>
			<center><h2>Employee Information </h2></center><br />
			First Name: <br /><input type="text" name="First" class="field-divided" placeholder="First"/><br />
			Last Name: <br /><input type="text" name="Last" class="field-divided" placeholder="Last"/><br />
			Job Title: <br /><input type="text" name="Job" class="field-long"/><br />
			Date Hired: <br /><input type="date" name="Hire" class="field-long"/><br />

			Status: <select name="Status" class="field-long">
			<option value="active">Active</option>
			<option value="inactive">Inactive</option>
			</select>

			<br/><br />
			<center><input type="submit" value="Add Employee"></center>
			</fieldset>
		</form>
	</body>
<style>
table{
	border-collapse: collapse;
}

td,tr,table {
    	height: 50px;
    	vertical-align: bottom;
	width: 100%;
	border: 1px solid black;
    	padding: 15px;
    	text-align: left;
</style>
<?php
		require_once 'login_name.php'; // Change this to the file name with your name

		//Create the connection to the MySQL database
		$db_server = mysql_connect($db_hostname, $db_username, $db_password);
		if (!$db_server) die("Unable to connect to MySQL: " . mysql_error());
		
		//Set the database to use: same as "USE DATABASE" in SQL
		mysql_select_db($db_database) or die("Unable to select database: " . mysql_error());
				
		$sql = "SELECT * FROM employees;";
		
		//As we have already connected to the database, execute the query stored in the $sql variable
		$result = mysql_query($sql);
		
    
		//More advanced logic can also be done based on success or failure
		if($result)
		{
			//Start a table
			echo "<table>";
      
			while($row=mysql_fetch_assoc($result))
			{
				//Store each SQL row's column name/value pair in a PHP variable
				foreach($row as $key=>$value) ${$key}=$value;
        
				//Construct a table row where <td> = table division, i.e. a single column
				echo "<tr><td>$Employee_First_Name</td><td>$Employee_Last_Name</td><td>$Job_Title</td><td>$Hire_Date</td><td>$Employee_Status</td></tr>";
			}
			
			//End the table
			echo "</table>";
		
				//Commented code below for DEBUGGING ONLY - Comment out the code for table above if this is being used.
  
			/*while($row=mysql_fetch_assoc($result))
			{
				//Store each SQL row's column name/value pair in a PHP variable
				foreach($row as $key=>$value) ${$key}=$value;


			}*/
		}
?>

<!-- Code copied obtained from https://codepen.io/ninjalol111/pen/KVKxYZ */ -->
<style type="text/css">
td {
    height: 50px;
    vertical-align: bottom;
}

.form-style-1 {
    margin:10px auto;
    max-width: 400px;
    padding: 20px 12px 10px 20px;
    font: 13px "Lucida Sans Unicode", "Lucida Grande", sans-serif;
}
.form-style-1 li {
    padding: 0;
    display: block;
    list-style: none;
    margin: 10px 0 0 0;
}
.form-style-1 label{
    margin:0 0 3px 0;
    padding:0px;
    display:block;
    font-weight: bold;
}
.form-style-1 input[type=text],
.form-style-1 input[type=date],
.form-style-1 input[type=datetime],
.form-style-1 input[type=number],
.form-style-1 input[type=search],
.form-style-1 input[type=time],
.form-style-1 input[type=url],
.form-style-1 input[type=email],
textarea,
select{
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    border:1px solid #BEBEBE;
    padding: 7px;
    margin:0px;
    -webkit-transition: all 0.30s ease-in-out;
    -moz-transition: all 0.30s ease-in-out;
    -ms-transition: all 0.30s ease-in-out;
    -o-transition: all 0.30s ease-in-out;
    outline: none; 
}
.form-style-1 input[type=text]:focus,
.form-style-1 input[type=date]:focus,
.form-style-1 input[type=datetime]:focus,
.form-style-1 input[type=number]:focus,
.form-style-1 input[type=search]:focus,
.form-style-1 input[type=time]:focus,
.form-style-1 input[type=url]:focus,
.form-style-1 input[type=email]:focus,
.form-style-1 textarea:focus,
.form-style-1 select:focus{
    -moz-box-shadow: 0 0 8px #88D5E9;
    -webkit-box-shadow: 0 0 8px #88D5E9;
    box-shadow: 0 0 8px #88D5E9;
    border: 1px solid #88D5E9;
}
.form-style-1 .field-divided{
    width: 49%;
}

.form-style-1 .field-long{
    width: 100%;
}
.form-style-1 .field-select{
    width: 100%;
}
.form-style-1 .field-textarea{
    height: 100px;
}
.form-style-1 input[type=submit], .form-style-1 input[type=button]{
    background: #4B99AD;
    padding: 8px 15px 8px 15px;
    border: none;
    color: #fff;
}
.form-style-1 input[type=submit]:hover, .form-style-1 input[type=button]:hover{
    background: #4691A4;
    box-shadow:none;
    -moz-box-shadow:none;
    -webkit-box-shadow:none;
}
.form-style-1 .required{
    color:red;
}
</style>
</html>

