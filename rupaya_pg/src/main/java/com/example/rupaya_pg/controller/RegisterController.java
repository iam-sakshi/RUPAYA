package com.example.rupaya_pg.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.rupaya_pg.helpers.HTML;
import com.example.rupaya_pg.helpers.Token;
import com.example.rupaya_pg.mailMessenger.MailMessenger;
import com.example.rupaya_pg.models.User;
import com.example.rupaya_pg.repository.UserRepository;

import java.util.Random;

import javax.mail.MessagingException;
import javax.validation.Valid;

@Controller
public class RegisterController {

	@Autowired
    private UserRepository userRepository;
	
	@GetMapping("/register")
	public ModelAndView getRegister()
	{
		ModelAndView getRegisterPage = new ModelAndView("register");
		getRegisterPage.addObject("PageTitle","Register");
		System.out.println("In Register Page Controller");
		return getRegisterPage;
	}
	
	@PostMapping("/register")
	public ModelAndView register(@Valid @ModelAttribute("registerUser") User user ,
			BindingResult result,
			@RequestParam("first_name") String first_name,
			@RequestParam("last_name") String last_name,
			@RequestParam("email") String email,
			@RequestParam("password") String password,
			@RequestParam("confirm_password") String confirm_password) throws MessagingException   
	{
		ModelAndView registerationPage = new ModelAndView ("register");
		if(result.hasErrors() && confirm_password.isEmpty())
		{
			registerationPage.addObject("confirm_pass","The confirm field is required");
			return registerationPage;
		}
	    if(!password.equals(confirm_password)){
	    	registerationPage.addObject("passwordMisMatch", "passwords do not match");
            return registerationPage;
        }

        String token = Token.generateToken();

        Random rand = new Random();
        int bound = 123;
        int code = bound * rand.nextInt(bound);

        String emailBody = HTML.htmlEmailTemplate(token, code);
        String hashed_password = BCrypt.hashpw(password, BCrypt.gensalt());

        userRepository.registerUser(first_name, last_name, email, hashed_password, token, code);

        //  SEND EMAIL NOTIFICATION:
        MailMessenger.htmlEmailMessenger("rupaya.service@gmail.com", email, "Verify Account", emailBody);

        // RETURN TO REGISTER PAGE:
        String successMessage = "Account Registered Successfully, Please Check your Email and Verify Account!";
        registerationPage.addObject("success", successMessage);
        return registerationPage;
    }
}
