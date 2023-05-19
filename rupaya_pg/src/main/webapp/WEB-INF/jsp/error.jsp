<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap/bootstrap-5.3.0-alpha1-dist/css/bootstrap.css">
    <link rel="stylesheet" href="css/fontawesome/fontawesome-free-6.3.0-web/css/all.css">
    <link rel="stylesheet" href="css/default.css">
    <link rel="icon" href="img/favicon.ico?">
    <title>Error</title>
</head>
<body class="d-flex align-items-center justify-content-center ">
    <img class="col-6" src="img/err.png" />
    <h3 class="col-6">
          <c:if test="${requestScope.error != null}">
                <div class="alert alert-danger text-center border border-danger">
                    <b>${requestScope.error}</b>
                </div>
            </c:if>
        <br>
        <br>
        <br>
        <div class="button-wrapper d-flex align-items-center">
        <a href="/" class="btn btn-md register" role="button">Back to Home</a>
        <a href="/login" class="btn btn-md login" role="button">Login</a>
        </div>
    </h3>

</body>
</html>