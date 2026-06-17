package com.resumeBuilder.resumeBuilder.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.resumeBuilder.resumeBuilder.model.User;
import com.resumeBuilder.resumeBuilder.service.UserService;

import jakarta.servlet.http.HttpSession;

@Controller
public class AuthController {

	@Autowired
	private UserService userService;

	@GetMapping("/")
	public String defaultRedirect() {
		return "redirect:/home";
	}

	@GetMapping("/home")
	public String homePage() {
		return "home";
	}

	@GetMapping("/register")
	public String showRegisterPage() {
		return "register";
	}

	@PostMapping("/register")
	public String registerUser(@ModelAttribute User user, Model model) {
		userService.register(user);
		model.addAttribute("msg", "Registration successful! Please login.");
		return "login";
	}

	@GetMapping("/login")
	public String showLoginPage() {
		return "login";
	}

	@PostMapping("/login")
	public String login(@RequestParam String email, @RequestParam String password, HttpSession session, Model model) {
		User user = userService.login(email, password);
		if (user != null) {
			session.setAttribute("loggedUser", user);
			return "redirect:/home"; // redirect after login
		} else {
			model.addAttribute("error", "Invalid email or password");
			return "login";
		}
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/home";
	}

}
