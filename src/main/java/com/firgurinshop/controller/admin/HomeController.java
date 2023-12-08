package com.firgurinshop.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.firgurinshop.Entity.Brand;
import com.firgurinshop.Services.admin.HomeServiceImplementAdmin;
import com.firgurinshop.controller.web.BaseController;
import javassist.expr.NewArray;

@Controller(value = "homeControllerOfAdmin")
public class HomeController extends BaseController{
	@Autowired
	HomeServiceImplementAdmin homeServiceImplementAdmin = new HomeServiceImplementAdmin();

	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public ModelAndView homePageAdmin() {
		_mvShare.setViewName("admin/home");
		return _mvShare;
	}
	
	@RequestMapping(value = "/addProduct", method = RequestMethod.GET)
	public ModelAndView addProduct() {
		_mvShare.setViewName("admin/product/addproduct");
		return _mvShare;
	}
	
	@RequestMapping(value = "/allProduct", method = RequestMethod.GET)
	public ModelAndView allProduct() {
		_mvShare.setViewName("admin/product/allproduct");
		return _mvShare;
	}
	
	@RequestMapping(value = "/editProduct", method = RequestMethod.GET)
	public ModelAndView editProduct() {
		_mvShare.setViewName("admin/product/EditProduct");
		return _mvShare;
	}
	
	@RequestMapping(value = "/orderManagement", method = RequestMethod.GET)
	public ModelAndView orderManagement() {
		_mvShare.setViewName("admin/order-product/order-management");
		return _mvShare;
	}
	
	@RequestMapping(value = "/viewOrder", method = RequestMethod.GET)
	public ModelAndView viewOrder() {
		_mvShare.setViewName("admin/order-product/view-order");
		return _mvShare;
	}
	
	@RequestMapping(value = "/addBrand", method = RequestMethod.GET)
	public ModelAndView addBrand() {
		_mvShare.addObject("brand", new Brand());
		_mvShare.setViewName("admin/brand/AddBrand");
		return _mvShare;
	}
	
	@RequestMapping(value = "/allBrand", method = RequestMethod.GET)
	public ModelAndView allBrand() {
		_mvShare.addObject("tbl_brand_product", homeServiceImplementAdmin.getDetailBrand());
		_mvShare.setViewName("admin/brand/AllBrand");
		return _mvShare;
	}
	
	@RequestMapping(value = "/editBrand/{brand_id}", method = RequestMethod.GET)
	public ModelAndView editBrand(@PathVariable("brand_id") String brand_id) {
		_mvShare.addObject("tbl_detail_brand_product", homeServiceImplementAdmin.getDataBrand(brand_id));
		_mvShare.setViewName("admin/brand/EditBrand");
		return _mvShare;
	}
	
	@RequestMapping(value = "/addCategory", method = RequestMethod.GET)
	public ModelAndView addCategory() {
		_mvShare.setViewName("admin/category-product/AddCategory");
		return _mvShare;
	}
	
	@RequestMapping(value = "/allCategory", method = RequestMethod.GET)
	public ModelAndView allCategory() {
		_mvShare.setViewName("admin/category-product/AllCategory");
		return _mvShare;
	}
	
	@RequestMapping(value = "/editCategory", method = RequestMethod.GET)
	public ModelAndView editCategory() {
		_mvShare.setViewName("admin/category-product/EditCategory");
		return _mvShare;
	}
	
	@RequestMapping(value = "/saveBrand", method = RequestMethod.POST)
	public String saveBrand(@ModelAttribute("brand") Brand brand) {
		homeServiceImplementAdmin.addBrand(brand);
		return "redirect:/addBrand";
	}
	
	@RequestMapping(value = "/active-brand-product/{brand_id}", method = RequestMethod.GET)
	public String activeBrand(@PathVariable String brand_id) {
		homeServiceImplementAdmin.updatestatusBrand(brand_id);
		return "redirect:/allBrand";
	}
	
	@RequestMapping(value = "/deactivate-brand-product/{brand_id}", method = RequestMethod.GET)
	public String deactivateBrand(@PathVariable String brand_id) {
		homeServiceImplementAdmin.updatestatusBrandDeactivated(brand_id);
		return "redirect:/allBrand";
	}
}
