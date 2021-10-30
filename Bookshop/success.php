<!DOCTYPE html>
    <html lang="en">

    <head>

        <?php
        echo "<link rel='stylesheet' type='text/css' href='css/stylesheet.css'>";
        ?>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>
            Success

        </title>
    </head>

    <body>

        <header class="topHeader">
            <?php
            echo "<img src='images/BooksPic.JPEG' alt= Books on a shelf>";
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
            <h2>You have successfully entered your credit card details</h2>
            <hr>
            <section class="card" >
                <p>Debit/Credit Card</p>
                <?php
                echo"<img src='images/masterCardPic.png' alt= Master card>";
                ?>
                <section id="cardNum">
            <?php
            
            //taking my cardNum to print the card number
            session_start();
            $cardNum=$_SESSION["cardNum"];
            
            echo "Your credit card number ends in ". $cardNum;
            session_unset();
            session_destroy();

            ?>
                </section>

            </section>
            <!-- below has been done on purpose
             to create a grey sextion below the card similar to the pay page -->
            <section class="paymentForm">
      
            </section>
        
        </section>

       

        </main>
    </body>
  

    </html>
