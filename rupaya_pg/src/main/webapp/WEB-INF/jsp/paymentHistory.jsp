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
    <script src="../css/bootstrap/bootstrap-5.3.0-alpha1-dist/js/bootstrap.bundle.js"></script>
    <title>Dashboard</title>
</head>
<body>


    <!-- Header -->
    <c:import url="components/incl/header.jsp"/>

    <div class="container">

       <div class="card">
              <div class="card-header">
                <i class="fas fa-credit-card me-2" aria-hidden="true"></i> Payment History
            </div>

            <div class="card-body">
            <c:if test="${requestScope.payment_history != null}">
                <!-- Payment History Table -->
                <table class="table text-center table-striped">
                    <tr>
                        <th>Record Number</th>
                        <th>Beneficiary</th>
                        <th>Beneficiary Account Number</th>
                        <th>Amount</th>
                        <th>Status</th>
                        <th>Reference</th>
                        <th>Reason Code</th>
                        <th>Created at</th>
                    </tr>
                    <!-- Loop Through Payment History Records -->
                    <c:forEach items="${requestScope.payment_history}" var="payments">
                    <tr>
                        <td>${payments.payment_id}</td>
                        <td>${payments.beneficiary}</td>
                        <td>${payments.beneficiary_acc_no}</td>
                        <td>${payments.amount}</td>
                        <td>${payments.status}</td>
                        <td>${payments.reference_no}</td>
                        <td>${payments.reason_code}</td>
                        <td>${payments.created_at}</td>
                    </tr>
                     </c:forEach>
                </table>
            </c:if>
            </div>
       </div>
    </div>

   <c:import url="components/incl/footer.jsp"/>