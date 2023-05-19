
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<style>
.main-page-header{
	background-color: #2277ff  !important;
    box-shadow: rgba(0, 0, 0, 0.4) 0px 2px 4px, rgba(0, 0, 0, 0.3) 0px 7px 13px -3px, rgba(0, 0, 0, 0.2) 0px -3px 0px inset;
    padding: 10px 0px;
}

.main-page-header .company-name{
    color: white;
    font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    font-size: 25px;
}
</style>
<header class="main-page-header ab-3">
    <div class="container d-flex align-items-center">
        <div class="company-name">
            RUPAYA
        </div>
            <nav class="navigator">
                <li><a href="/app/dashboard">Dashboard</a></li>
                <li><a href="/app/payment_history" data-step="4" data-intro="Press button to view , Payment History Records">Payment History</a></li>
                <li><a href="/app/transact_history" data-step="5" data-intro="Press button to view , Transaction History Records">Transaction History</a></li>
                
            </nav>
            <div class="display-name ms-auto text-white">
                <i class="fa fa-circle text-success me-2"></i> Welcome: <span>${user.first_name}  ${user.last_name}</span>
            </div>
            <a href="/logout" class="btn btn-sm text-white ms-2" data-step="6" data-intro="Press button to Sign Out">
                <i class="fas fa-sign-out-alt " aria-hidden="true"></i> Sign Out
            </a>
        </div>
    </header>
