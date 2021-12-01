<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body>
  	<center>
    <br />
    <h2>
    	
      <?php
			 /* 
        Hello World 
        (PHP, yay)!

       */
			 echo "Hello World! <br />
       (many things are cool)";
       $fname = " -- Jesse";
       echo $fname;
      ?>

	</h2>
	</center>

  <center>

    <h3>

    <?php

      // Math operators - modulus below
      $num1 = 34;
      $num2 = 8;
      echo $num1 % $num2;

    ?>
  </h3>

  <hr />
      <?php
      // Concatenation
      $firstname = "Coder";
      $lastname = "Lovecraft";
      echo $firstname . " " . $lastname;


      ?>
      <br><br>
      <?php
        // comparison operators
        /* 
        == Equal to
        != Not equal to
        > Greater than
        < Less than
        >= Greater than or equal
        <= Less Than or equal to
        PHP is case sensitive, so when evaluating variables in strings, case is meaningful
        */

      ?>

  </center> 
	  <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


</body>
</html>



