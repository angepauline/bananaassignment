<?php 

	require("connection.php");
	 
	// Submit data from the form
	if(isset($_POST['sub'])){
		    //echo "Biika button is clicked";
			$names = $_REQUEST["amazina"];
			//$waiges = $_REQUEST["umushahara"];
			// query to be sent by the web server to the mysql database server
			$query = "INSERT INTO cooperativetb(copename) 
			           VALUES('$names')";
		    
			$rs = mysqli_query($con,$query);
			// Check if the connection is established
			if($rs){
				echo "<p style='color:green;'>$names   is well registered<br/></p>";
			}else{
				echo "<p style='color:red;'>Hari ikibazo cyavutse ".mysqli_error($con)."</p>";
		    }
        }
            
			
	// Retrieve data button from the form
	if(isset($_POST['ret'])){
		// Title of the list
		echo "<h2>List of my system users - From MySQL Database</h2><hr/>";
		// Query to select the data from table called user
		$query = "SELECT * FROM cooperativetb";
		// Process the query with the database server
		$re = mysqli_query($con, $query);
		// Check if the connection is OK
        if($re){
			//Look through the table and save in the ARRAY
			while($row = mysqli_fetch_array($re)){
				// Display the array data at their specific index name.
				// We are displaying id, names, and more CRUD operations (C-Create, R-Read, U-Update, D-Delete)
				// there are embedded links - with anchor - <a href ="">, details page, edit page, have to be created
				echo $row['copid']." ".$row['copename']."|<a href='userdetails.php?UserId=$row[copid]'> More </a>|<a href='useredit.php?UserId=$row[copid]'> Edit </a>|<a href='userdelete.php?UserId=$row[copid]'> Delete</a>|<br/>";
			}
		}else{
			// If something is wrong in the query, this message error is
			// coming from database server validation.
			echo "Wrong query ".mysqli_error($con);
		}		
		 
	} 
	
 ?>
<html>
<head>
    <title>signup</title>
</head>
<body style="background-color:yellowgreen;">
    <form style="width:558px;
                        height:520px;
                        background-color: #241c1c;
                        border-radius:20px;
                        padding-left:40px ;
                        color: white;
                        position: absolute;
                        margin-left:200px;
                        margin-top: 60px;
                        " method="post" action="" >
    <table border="0" style="color:white; font-size:20px;">
        <tr><h2>Please fill the form to signup!</h2></tr>
        <tr>
            <td>
                <h3> The details of cooperatives</h3>
                <label for="fname">First name:</label>
                    <input type="text" name="amazina"><br><br>
		 <label> telephone: </label><br>
		   <input type="number" name="terephoni"  /><br/>
                    <label >Province:</label><br>
                    <input type="text" name="province"><br><br>
                    <label>Details about cooperative:</label><br>
                    <input type="text" name="details"><br><br>

            </td>
        <td><h3>The head of one of member</h3>
            <label>First name:</label><br>
            <input type="text" name="fname"><br><br>
            <label>First name:</label><br>
                    <input type="text" name="lname"><br><br>
                    <label for="gender"> Select your role</label>
                    <select name="gender">
                        <option value="CEO">CEO</option>
                        <option value="Manager">manager</option>
                        <option value="Secretary">Secretary</option>
                        <option value="local member">Local member</option>
                    </select><br /><br />
                    <label>Email:</label><br>
                    <input type="text" name="fname"><br><br>
                    <label for="bdaymonth">Birthday (month and year):</label>
                    <input type="month" id="bdaymonth" name="bdaymonth"><br /><br />
    
        </td>
        </tr>
    </table>
    <script>
function myFunction() {
  alert("you canceled each and everything");
}
function myFunction1() {
  alert("congratulation ! you submitted your form");
}
</script>
    <button onclick="myFunction1()"><input type="submit" value="Register" name="sub"></button>
    <button onclick="myFunction()"><input type="submit" value="cancel"name="ret"></button>

    </form>
</body>
</html>