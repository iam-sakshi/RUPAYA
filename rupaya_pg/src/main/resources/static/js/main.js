function myFunction() {
    var x = document.getElementById("transact-type").value;
    var transferCard = document.querySelector(".transfer-card");
    var paymentCard = document.querySelector(".payment-card");
    var depositCard = document.querySelector(".deposit-card");
    var withdrawCard = document.querySelector(".withdraw-card");
    if(!x){

    }
    else if(x == "payment"){
                paymentCard.style.display = "block";
                paymentCard.nextElementSibling.style.display = "none";
                depositCard.style.display="none";
                withdrawCard.style.display="none";
            }
    else if(x=="transfer")
    {
        transferCard.previousElementSibling.style.display = "none";
        transferCard.style.display="block";
        transferCard.nextElementSibling.style.display = "none";
        withdrawCard.style.display="none";
    }
    else if(x=="deposit")
    {
        transferCard.previousElementSibling.style.display = "none";
        depositCard.previousElementSibling.style.display = "none";
        depositCard.style.display="block";
        depositCard.nextElementSibling.style.display = "none";
    }
    else if(x=="withdraw")
    {
        transferCard.style.display="none";
        paymentCard.style.display="none";
        withdrawCard.previousElementSibling.style.display = "none";
        withdrawCard.style.display="block";
        withdrawCard.nextElementSibling.style.display = "none";
    }
  }
