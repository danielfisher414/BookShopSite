<!DOCTYPE html>
    <html lang="en">

    <head>
        <script type="text/javascript" src="js/main.js"></script>
        <?php
        echo "<link rel='stylesheet' type='text/css' href='css/stylesheet.css'>";
        ?>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>
            Payment

        </title>
    </head>

    <body>

        <header class="topHeader">
            <?php
            echo "<img src='images/BooksPic.JPEG' alt=Books on a shelf>";

            ?>

            <h1> My Bookshop </h1>
        </header>
        <nav>
            <ul>
                <li><a href='index.html'>Home</a></li>
                <li><a href='#'>About us</a></li>
                <li><a href='#'>Contact us</a></li>

            </ul>

        </nav>
        <main>
        <section class="paymentContainer">
            <h2>Payment Options</h2>
            <hr>
            <section class="card">
                <p>Debit/Credit Card</p>
                <?php
                echo "<img src='images/masterCardPic.png' alt= Master card >";
                ?>
            </section>
            <section class="paymentForm">
                <form action="#" method="POST">

                   <label>Card Number</label>
                 <input type="text" id="cardNum" name="cardNum"><br>
                 <label>Expiration Date</label>
                     <select id="expirationMM" name="expirationMM">
                        <option value="">Month</option>
                        <option value="01">January</option>
                        <option value="02">Febuary</option>
                        <option value="03">March</option>
                        <option value="04">April</option>
                        <option value="05">May</option>
                        <option value="06">June</option>
                        <option value="07">July</option>
                        <option value="08">August</option>
                        <option value="09">September</option>
                        <option value="10">October</option>
                        <option value="11">November</option>
                        <option value="12">December</option>
                    </select>
                    <select id="expirationYY" name="expirationYY">
                        <option value="">Year</option>
                        <option value="2017">2017</option>
                        <option value="2018">2018</option>
                        <option value="2019">2019</option>
                        <option value="2020">2020</option>
                        <option value="2021">2021</option>
                        <option value="2022">2022</option>
                        <option value="2023">2023</option>
                        <option value="2024">2024</option>
                    </select>
                    <br>
                    <label>Security Code </label>
                    <input type="text" id="securityCode" name="securityCode"><br>
                    <p>(3-4 digit code normally on the back of your card)</p>
                    <br>
                    <button onclick="checkingDetails()">Continue</button>
                    <input type="hidden" id="h" name="h" value="" />
                </form>

            </section>
        </section>
        <?php
        $h = isset($_POST['h']) ? $_POST['h'] : '';
        if ($h == 1) {
            //starting the session to prepare for it to be used
            session_start();

            // collecting the values
            $cardNum = $_POST["cardNum"];
            $securityCode = $_POST["securityCode"];
            $expirationMM = $_POST["expirationMM"];
            $expirationYY = $_POST["expirationYY"];

            //calculating the total days in a month from the month and year
            //for formatting to the database
            $days = cal_days_in_month(CAL_GREGORIAN, $expirationMM, $expirationYY);
            $expdate = $expirationYY . "-" . $expirationMM . "-" . "$days";

            // encrpting the card number
            $lastDigits = substr($cardNum, -4);
            $encryptedCardNum = "**** **** **** " . $lastDigits;

            //saving the encryptedCardNum to send to the success page
            $_SESSION["cardNum"] = $encryptedCardNum;

            //encoding the card number
            $encodedCardNum = md5($cardNum);

            //accessess the db and inserting the record
            $conn  = mysqli_connect("localhost", "root", "", "creditcard");
            if (!$conn) {
                die("wrong");
            } else {
                echo mysqli_get_client_version($conn);
            }
            
            $sql = "INSERT INTO card (ccnum,expdate,seccode) VALUES ('$encodedCardNum','$expdate',$securityCode)";
            if ($conn->query($sql) === TRUE) {
                echo "New record created successfully";
            } else {
                echo "Error: " . $sql . "<br>" . $conn->error;
            }
            $conn->close();
            header("Location: success.php");
        }
        if ($h == -1) {
            header("Location: pay.php");
        }
        ?>
        </main>

    </body>

    </html>
