package com.firgurinshop.controller.web;

import javax.imageio.ImageTranscoder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.firgurinshop.Services.user.HomeServiceImplement;

@Controller(value = "homeControllerOfWeb")
public class HomeController extends BaseController{
	@RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
	public ModelAndView homePage() {
		_mvShare.addObject("tbl_product", _homeService.getDataProduct());
		_mvShare.addObject("tbl_category_product1", _homeService.getCategory());
		_mvShare.setViewName("web/home");
		return _mvShare;
	}

	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public ModelAndView Contact() {
		_mvShare.setViewName("web/contact");
		return _mvShare;
	}

	@RequestMapping(value = "/detail-product/{id}", method = RequestMethod.GET)
	public ModelAndView Product(@PathVariable String id) {
		_mvShare.addObject("tbl_detail_product", _homeService.getDataDetailProduct(id));
		_mvShare.addObject("tbl_category_product", _homeService.getDataDetailCategory(id));
		_mvShare.addObject("tbl_brand_product", _homeService.getDataDetailBrand(id));
		_mvShare.setViewName("web/detail-product");
		return _mvShare;
	}
	
	
	
	@RequestMapping(value = "/product-portfolio/{id}", method = RequestMethod.GET)
	public ModelAndView productPortfolio(@PathVariable String id) {
		if(id.equals("all")) {
			_mvShare.addObject("tbl_product_portfolio", _homeService.getDataProduct());
			_mvShare.addObject("tbl_category_product", _homeService.getDetailCategory(id));
			_mvShare.addObject("tbl_brand_product", _homeService.getDetailBrand());
			_mvShare.addObject("tbl_detail_product", _homeService.getDataDetailProduct(id));
		}
		
		else {
			_mvShare.addObject("tbl_category_product", _homeService.getDetailCategory(id));
			_mvShare.addObject("tbl_brand_product", _homeService.getDetailBrand());
			_mvShare.addObject("tbl_product_portfolio", _homeService.getDataDetailProductPortfolio(id));
			_mvShare.addObject("tbl_detail_product", _homeService.getDataDetailProduct(id));
		}
		
		
		
		_mvShare.setViewName("web/product-portfolio");
		return _mvShare;
	}
	

	
	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public ModelAndView cart() {
		_mvShare.setViewName("web/cart");
		return _mvShare;	
	}
	
	 
}