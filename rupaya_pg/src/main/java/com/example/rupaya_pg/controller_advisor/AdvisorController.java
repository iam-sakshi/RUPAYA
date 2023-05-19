package com.example.rupaya_pg.controller_advisor;
import com.example.rupaya_pg.models.User;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

@ControllerAdvice
public class AdvisorController {

    @ModelAttribute("registerUser")
    public User getUserDefaults(){
        return new User();
    }
}