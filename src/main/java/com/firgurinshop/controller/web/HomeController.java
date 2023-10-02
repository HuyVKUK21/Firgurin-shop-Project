package com.firgurinshop.controller.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.firgurinshop.Services.user.HomeServiceImplement;

@Controller(value = "homeControllerOfWeb")
public class HomeController extends BaseController{
	@RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
	public ModelAndView homePage() {
		_mvShare.addObject("tbl_product", _homeService.getDataProduct());
		_mvShare.setViewName("web/home");
		return _mvShare;
	}

}