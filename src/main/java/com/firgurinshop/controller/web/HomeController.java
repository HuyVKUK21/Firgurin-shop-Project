package com.firgurinshop.controller.web;

import java.util.List;

import javax.imageio.ImageTranscoder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.firgurinshop.Entity.Cart;

import com.firgurinshop.Entity.User;
import com.firgurinshop.Services.user.AccountServiceImpl;
import com.firgurinshop.Services.user.HomeServiceImplement;

import com.google.gson.Gson;

@Controller(value = "homeControllerOfWeb")
public class HomeController extends BaseController {

	@Autowired
	AccountServiceImpl accountService = new AccountServiceImpl();


	@RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
	public ModelAndView homePage() {

		_mvShare.addObject("tbl_product", _homeService.getDataProduct());
		_mvShare.addObject("tbl_product_available", _homeService.getDataProductAvailable());
		_mvShare.addObject("tbl_category_product1", _homeService.getCategory());
		_mvShare.setViewName("web/home");
		return _mvShare;
	}

	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public ModelAndView Contact() {
		_mvShare.setViewName("web/contact");
		return _mvShare;
	}

	@RequestMapping(value = "/payment/{user_id}", method = RequestMethod.GET)
	public ModelAndView Payment(@PathVariable String user_id) {
		_mvShare.addObject("user_id", user_id);
		_mvShare.addObject("tbl_cart", _homeService.getInfoCart(user_id));
		_mvShare.setViewName("web/payment");
		return _mvShare;
	}

	@RequestMapping(value = "/detail-product/{id}", method = RequestMethod.GET)
	public ModelAndView Product(@PathVariable String id) {
		_mvShare.addObject("cart", new Cart());
		_mvShare.addObject("tbl_detail_product", _homeService.getDataDetailProduct(id));
		_mvShare.addObject("tbl_category_product", _homeService.getDataDetailCategory(id));
		_mvShare.addObject("tbl_brand_product", _homeService.getDataDetailBrand(id));
		_mvShare.setViewName("web/detail-product");
		return _mvShare;
	}

	@RequestMapping(value = "/product-portfolio/{id}", method = RequestMethod.GET)
	public ModelAndView productPortfolio(@PathVariable String id,
			@RequestParam(name = "tradeMark", required = false) String tradeMark,
			@RequestParam(name = "productPrice", required = false) String product_price,
			@RequestParam(name = "productSize", required = false) String product_size,
			@RequestParam(name = "sortProduct", required = false) String sort_product) {
		if (tradeMark != null || product_price != null || product_size != null || sort_product != null) {
			_mvShare.addObject("tbl_product_portfolio",
					_homeService.tradeMarkFilter(tradeMark, product_price, product_size, sort_product));
			_mvShare.addObject("all_product", "Tất cả sản phẩm");
			_mvShare.addObject("tbl_brand_product", _homeService.getDetailBrand());
			_mvShare.addObject("tbl_product_size", _homeService.productSize());

		} else if (id.equals("all")) {
			_mvShare.addObject("tbl_product_portfolio", _homeService.getDataProduct());
			_mvShare.addObject("all_product", "Tất cả sản phẩm");
			_mvShare.addObject("tbl_brand_product", _homeService.getDetailBrand());
			_mvShare.addObject("tbl_product_size", _homeService.productSize());
		} else {
			_mvShare.addObject("tbl_category_product", _homeService.getDetailCategory(id));
			_mvShare.addObject("tbl_brand_product", _homeService.getDetailBrand());
			_mvShare.addObject("all_product", null);
			_mvShare.addObject("tbl_product_portfolio", _homeService.getDataDetailProductPortfolio(id));
			_mvShare.addObject("tbl_detail_product", _homeService.getDataDetailProduct(id));
		}

		_mvShare.setViewName("web/product-portfolio");
		return _mvShare;
	}

	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public ModelAndView cartGet(@RequestParam("user_id") String user_id) {
		_mvShare.addObject("user_id", user_id);
		_mvShare.addObject("tbl_info_cart", _homeService.getInfoCart(user_id));
		_mvShare.setViewName("web/cart");
		return _mvShare;
	}

	@RequestMapping(value = "/cart", method = RequestMethod.POST)
	public String cartPost(@ModelAttribute("cart") Cart cart, @RequestParam("user_id") String user_id) {
		accountService.AddCart(cart);
		return "redirect:/cart?user_id=" + user_id;
	}

	@RequestMapping(value = "/update-to-cart", method = RequestMethod.GET)
	@ResponseBody
	public String updatetoCart(@RequestParam String submitButton, @RequestParam String cart_id,
			@RequestParam("user_id") String user_id) {
		if ("-".equals(submitButton)) {
			_homeService.updateCart(cart_id);
		} else if ("+".equals(submitButton)) {
			_homeService.updateCartAdd(cart_id);
		}
		List<Cart> updatedCartList = _homeService.getInfoCart(user_id);
		Gson gson = new Gson();
		String json = gson.toJson(updatedCartList);
		return json;
	}

	@RequestMapping(value = "/delete-to-cart/{cart_id}/{user_id}", method = RequestMethod.GET)
	public String deletetoCart(@PathVariable String cart_id, @PathVariable String user_id) {
		_homeService.deletetoCart(cart_id);
		return "redirect:/cart?user_id=" + user_id;
	}

}