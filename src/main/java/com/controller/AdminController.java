package com.controller;

import java.security.Principal;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.CustomAccountDetail;

@Controller
public class AdminController {
	@RequestMapping(value="/my-account")
	public String myAccountPage(Principal principal, Model model) {
		if(principal != null) {
			CustomAccountDetail acc  = (CustomAccountDetail) SecurityContextHolder.getContext().getAuthentication()
					.getPrincipal();
		model.addAttribute("acc", acc);
		
			return "my-account";
		}else {
			return "notLogin";
			
		}
	}


}