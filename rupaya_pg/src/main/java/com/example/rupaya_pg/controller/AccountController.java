package com.example.rupaya_pg.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.rupaya_pg.helpers.GenAccountNumber;
import com.example.rupaya_pg.models.User;
import com.example.rupaya_pg.repository.AccountRepository;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/account")
public class AccountController {

    @Autowired
    private AccountRepository accountRepository;

    @PostMapping("/create_account")
    public String createAccount(@RequestParam("account_name")String accountName,
                                @RequestParam("account_type")String accountType,
                                @RequestParam("account_no")String accountNumber,
                                @RequestParam("cvv")String cvv,
                                @RequestParam("ddmm")String ddmm,
                                RedirectAttributes redirectAttributes,
                                HttpSession session){

        if(accountName.isEmpty() || accountType.isEmpty()){
            redirectAttributes.addFlashAttribute("error", "Account Details Cannot be Empty!");
            return "redirect:/app/dashboard";
        }

        User user = (User)session.getAttribute("user");

        int setAccountNumber = GenAccountNumber.generateAccountNumber();
        String bankAccountNumber = Integer.toString(setAccountNumber);

        accountRepository.createBankAccount(user.getUser_id(), accountNumber, accountName, accountType , cvv, ddmm );

        redirectAttributes.addFlashAttribute("success", "Account Created Successfully!");
        return "redirect:/app/dashboard";

    }
}