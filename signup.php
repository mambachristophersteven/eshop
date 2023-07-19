<?php

include 'connection.php';
$firstname="";
$lastname="";
$telephone="";
$username="";
$password="";
$error="";

if(isset($_POST['submit'])){
    $firstname= $_POST['firstname'];
    $lastname= $_POST['lastname'];
    $telephone= $_POST['telephone'];
    $username= $_POST['username'];
    $password= $_POST['password'];

    $sqlinsert= "INSERT INTO `admins` (firstname,lastname,telephone,username,password, position) VALUES ('$firstname','$lastname','$telephone','$username','$password','Customer')";
    $result= mysqli_query($con, $sqlinsert);
    if($result){
        header("location: ./entrysuccess.php");
    }
    else{
        die("error occurred: ".mysqli_error($con));
    }

    


    
}

?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shoppa - Sign Up Page</title>
    <link rel="icon" type="image/png" sizes="32x32" href="./logos/shop.png">
    <link rel="stylesheet" href="css/index.css">
</head>
<body>
    <div class="container">
        <div class="nav">
            <div class="logo">
                <img src="logos/shop.png" alt="">
            </div>
        </div>
        <div class="body">
            <h2>Customer Sign Up</h2>
            <h3 id="error"><?php echo $error;?></h3>
            <form action="./signup.php" method="post" id="form">
                <input type="text" name="firstname" id="firstname" placeholder="enter firstname" value=<?php echo $firstname?>>
                <br>
                <input type="text" name="lastname" id="lastname" placeholder="enter lastname" value=<?php echo $lastname?>>
                <br>
                <input type="tel" name="telephone" id="telephone" placeholder="enter telephone" maxlength='10' value=<?php echo $telephone?>>
                <br>
                <input type="text" name="username" id="username" placeholder="enter username" value=<?php echo $username?>>
                <br>
                <input type="password" name="password" id="password" placeholder="enter password">
                <br>
                <input type="submit" value="Validate" name="submit" id="submit">
                <div class="option">
                    <a href="./adminlogin.php">
                        <p>Already have an account?</p>
                        <p>Login</p>
                    </a>
                </div>
                <br>
            </form>
            <div class="company">
                <h1>Shoppa</h1>
            </div>
            <div class="developer">
                <small>Powered by <span>mamba lev</span></small>
                <img src="./logos/mamba.png" alt="mamba logo">
            </div>
        </div>
    </div>
    

    <script>

        const form = document.getElementById('form');
        const firstname = document.getElementById('firstname');
        const lastname = document.getElementById('lastname');
        const telephone = document.getElementById('telephone');
        const username = document.getElementById('username');
        const password = document.getElementById('password');
        const errorMessage = document.getElementById('error');
        const submitButton = document.getElementById('submit');

        const listener = function (e) {
            e.preventDefault();
            checkInputs();
        };

        form.addEventListener('submit', listener);

        function checkInputs(){
            //get the values from the inputs           
            const firstnameValue = firstname.value.trim();
            const lastnameValue = lastname.value.trim();
            const telephoneValue = telephone.value.trim();
            const usernameValue = username.value.trim();
            const passwordValue = password.value.trim();
            if(passwordValue === ''){
                //show error
                //add error class
                setErrorFor(password, 'Enter a password');
            }
            else{
                //add success class
                setSuccessFor(password);
            }
            if(usernameValue === ''){
                //show error
                //add error class
                setErrorFor(username, 'Enter a username');
            }
            else{
                //add success class
                setSuccessFor(username);
            }
            if(telephoneValue === ''){
                //show error
                //add error class
                setErrorFor(telephone, 'Enter a telephone number');
            }
            else{
                //add success class
                setSuccessFor(telephone);
            }
            if(lastnameValue === ''){
                //show error
                //add error class
                setErrorFor(lastname, 'Enter your lastname');
            }
            else{
                //add success class
                setSuccessFor(lastname);
            }
            if(firstnameValue === ''){
                //show error
                //add error class
                setErrorFor(firstname, 'Enter your firstname');
            }
            else{
                //add success class
                setSuccessFor(firstname);
            }
            if(firstnameValue !='' && lastnameValue !='' && telephoneValue !='' && usernameValue !='' && passwordValue !=''){
                errorMessage.style.color = "#2ecc71";
                errorMessage.innerText = "All Input Fields Validated";
                submitButton.style.background = "rgb(109, 109, 241)";
                submitButton.value = "Sign Up";
                form.removeEventListener("submit", listener);
            }

        }





        function setErrorFor(input, message){
            errorMessage.innerText = message;
            input.style.border = "2px solid #e74c3c";
        }

        function setSuccessFor(input){
            input.style.border = "2px solid #2ecc71";
        }
    </script>
</body>
</html>