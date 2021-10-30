function checkingDetails() {
    //collecting the values from the elements
    const cardNum = document.getElementById("cardNum").value;
    const expirationMM = document.getElementById("expirationMM").value;
    const expirationYY = document.getElementById("expirationYY").value;
    const securityCode = document.getElementById("securityCode").value;

    // all functions to see which elements are inputted correctly
    let calculatedDate = calulateDate(expirationMM, expirationYY);
    let calculatedCardNum = cardNumDecider(cardNum);
    let calculatedSecurityCode = securityCodeDecider(securityCode);

    //checking if all of it works
    if (calculatedCardNum == true && calculatedSecurityCode == true && calculatedDate == true) {
        document.getElementById("h").value = 1;

    } else {
        //if any of the elements are wrong an alert will be gave on which one was wrong
        document.getElementById("h").value = -1;
        if (calculatedCardNum == false) {
            alert("Incorrect card number format");
        }
        if (calculatedDate == false) {
            alert("The card has expired or incorrect format");
        }
        if (calculatedSecurityCode == false) {
            alert("Incorrect securtiy Code format");
        }



    }

    function cardNumDecider(cardNum) {
        const checkCardNum = /^[5][1-5][0-9]{14}$/;
        if (cardNum.match(checkCardNum)) {
            return true;
        } else {
            return false;
        }

    }

    function securityCodeDecider(securityCode) {
        const checkSecurityCode = /^[0-9]{4}$|^[0-9]{3}$/;
        if (securityCode.match(checkSecurityCode)) {
            return true;
        } else {
            return false;
        }

    }

    //calculating the current date and if inputted date has been expired or not
    function calulateDate(expirationMM, expirationYY) {
        const today = new Date();
        let mm = String(today.getMonth() + 1).padStart(2, '0');
        let yyyy = today.getFullYear();



        // checking if the year is lower 
        if (expirationYY > yyyy) {
            return true;
        } else if (expirationYY == yyyy) {
            if (expirationMM >= mm) {
                return true;
            }
        } else if (expirationYY < yyyy) {

            return false;
        }

        return false;
    }
}