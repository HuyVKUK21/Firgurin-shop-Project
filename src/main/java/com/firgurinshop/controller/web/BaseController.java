package com.firgurinshop.controller.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import com.firgurinshop.Services.user.HomeServiceImplement;

@Controller
public class BaseController {
	@Autowired
	HomeServiceImplement _homeService;
	public ModelAndView _mvShare = new ModelAndView();
}
