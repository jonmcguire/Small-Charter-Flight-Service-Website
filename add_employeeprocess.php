
	<?php
		require_once 'login_name.php'; // Change this to the file name with your name

		//Create the connection to the MySQL database
		$db_server = mysql_connect($db_hostname, $db_username, $db_password);
		if (!$db_server) die("Unable to connect to MySQL: " . mysql_error());
		
		//Set the database to use: same as "USE DATABASE" in SQL
		mysql_select_db($db_database) or die("Unable to select database: " . mysql_error());

		//Store each POST key/value pair in a PHP variable
		foreach($_POST as $key=>$value) ${$key}=$value;


		//DO something with that value
		
		$sql = "INSERT INTO Employees(Employee_First_Name, Employee_Last_Name, Job_Title , Hire_Date , Employee_Status) VALUES('$First','$Last','$Job','$Hire','$Status');";
		
		//As we have already connected to the database, execute the query stored in the $sql variable
		$result = mysql_query($sql);
		
		//Check if the INSERT was successfully executed: if the result is NOT FALSE
		if($result) echo "INSERT success!"; else echo "INSERT failed!";
		
		//More advanced logic can also be done based on success or failure
		if($result)
		{
			//Multiple lines of code should be wrapped in curly braces 
			echo "<p>New row was successfully inserted</p>".
			$insertQueryCount = $insertQueryCount+1;
		}
		else
		{
			echo "<p>Your insert failed.</p>";
			die(mysql_error());
		}
	?>
