<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/bootstrap/bootstrap-5.3.0-alpha1-dist/css/bootstrap.css">
    <link rel="stylesheet" href="../css/fontawesome/fontawesome-free-6.3.0-web/css/all.css">
    <link rel="stylesheet" href="../css/main.css">
    <link rel="icon" href="../img/favicon.ico?">
    <script src="../js/main.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/intro.js/2.7.0/introjs.min.css">
    <script src="../css/bootstrap/bootstrap-5.3.0-alpha1-dist/js/bootstrap.bundle.js"></script>
    <title>Dashboard</title>
</head>
<body>
    <c:import url="components/incl/header.jsp"/>
    
    <c:import url="components/transact_offcanvas.jsp"/>
    <c:import url="components/add_account_offcanvas.jsp"/>
    
      <div data-step="1" data-intro="Greetings! , lets take a tour of Dashboard">
                    <p><a class="btn btn-md btn-primary b1" role="button" href="javascript:void(0);" onclick="javascript:introJs().setOption('showProgress', true).start();">Start Tour »</a></p>
                </div>


    <div class="container">

            <c:if test="${success != null}">
                <div class="alert alert-info text-center border border-info">
                    <b>${success}</b>
                </div>
            </c:if>

            <c:if test="${error!= null}">
                <div class="alert alert-danger text-center border border-danger">
                    <b>${error}</b>
                </div>
            </c:if>
    </div>

    <c:choose>
        <c:when test="${fn:length(userAccounts) > 0 }">
            <c:import url="components/accounts_display.jsp"/>
        </c:when>
        <c:otherwise>
            <c:import url="components/no_accounts_display.jsp"/>
        </c:otherwise>
    </c:choose>

   <c:import url="components/incl/footer.jsp"/>
