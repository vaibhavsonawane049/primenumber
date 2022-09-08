<?php
if(isset($_POST['firstnumber'])){

$server = "localhost";
$username = "id19526641_root";
$password = "Vaibhav@12345";

$conn = mysqli_connect($server, $username, $password);

if(!$conn){
    die("Connection Failed".mysqli_connect_error());
}

$firstnumber = $_POST['firstnumber'];
$secondnumber = $_POST['secondnumber'];
$result = "";

echo "Prime Numbers Are : ";
if($firstnumber>1){
  for($j=$firstnumber;$j<=$secondnumber;$j++){
      $n1=$j;	
      $flag=0;
      for($i=2;$i<=($n1/2); $i++){
          if($n1%$i == 0 ){
          $flag=1;
          break;
          }
      }
      
      if($flag==0){
          $result = "$result, $n1";
          echo  "$n1 , " ;
      }	
  }
  }else {
    echo " Please Choose First Number Greater than 1";
  }

$sql = "INSERT INTO `id19526641_prime`.`prime` (`time_stamp`, `firstnumber`, `secondnumber`, `result`) VALUES (current_timestamp(), '$firstnumber', '$secondnumber', '$result')";

if($conn->query($sql)==true){
    echo "";
}else {
    echo "ERROR: $sql <br> $conn->error";
}

$conn->close();
}
?>



<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Prime Number Generator</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
  </head>
  <body>
   <div class = "container">
    <nav class="navbar navbar-expand-lg bg-light">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">Prime Number Generator</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        
      </div>
    </nav>
    </div>
    
    <div class="container mt-4">
        <form action="index.php" method="POST">
        <div class="mb-3">
            <label for="firstnumber" class="form-label">Enter First Number</label>
            <input type="text" class="form-control" id="firstnumber" name="firstnumber" aria-describedby="emailHelp">
        </div>

        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Enter Second Number</label>
            <input type="text" class="form-control" id="exampleInputEmail1" name="secondnumber" aria-describedby="emailHelp">
        </div>
        
        
        <button type="submit" class="btn btn-primary">Calculate</button>
        </form>
    </div>

    

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
  </body>
</html>