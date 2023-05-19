  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
  
<div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
    <div class="offcanvas-header">
      <h5 id="offcanvasRightLabel">Create / Add an account </h5>
      <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="offcanvas-body">
      <div class="card">
        <div class="card-body">
            <form action="/account/create_account" method="POST" class="add-account-form">
                <div class="form-group mb-3">
                    <label for="">Enter Account Name</label>
                    <input type="text" name="account_name" class="form-control" placeholder="Enter Account Name">
                </div>
                <div class="form-group mb-3">
                    <label for=""> Select Account Type</label>
                    <select name="account_type" class="form-control" id="">
                        <option value="">--Select Account Type--</option>
                        <option value="check">Check</option>
                        <option value="savings">Savings</option>
                        <option value="business">Business</option>
                    </select>
                </div> 
                <div class="form-group mb-3">
                    <input type="text" name="account_no" class="form-control" placeholder="Enter Account Number">
                </div>
                <div class="form-group mb-3">
                    <input type="text" name="cvv" class="form-control" placeholder="Enter cvv">
                </div>
                <div class="form-group mb-3">
                    <input type="text" name="ddmm" class="form-control" placeholder="Enter Expiring DD/MM">
                </div>
                <div class="form-group mb-2">
                    <button id="transact-btn" class="btn btn-md">Add Account</button>
                </div>
            </form>
        </div>
      </div>
  </div>
  </div>


