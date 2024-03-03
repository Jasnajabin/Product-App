package com.ty.product;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.ty.product.dao.Productdao;
import com.ty.product.entity.Product;
@Controller
public class ProductController {
Productdao dao=new Productdao();
	@RequestMapping("/")
	public String Home(Model model) {
		List<Product>products=dao.gatAllProduct();
		model.addAttribute("products", products);
		return"index";
	}
	@RequestMapping("/addproduct")
	public String addProduct(Model model) {
		model.addAttribute("title", "Add Product");
		return"addProduct";
	}
	
	@RequestMapping(value= "/handle", method =RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product, HttpServletRequest request) {
		System.out.println(product);
		dao.saveProduct(product);
		RedirectView redirectView=new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}
	@RequestMapping("/delete/{productId}")
	public RedirectView handleProduct(@PathVariable("productId") int pid,    HttpServletRequest request) {
		this.dao.deleteProduct(pid);
		RedirectView redirectView=new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}
	@RequestMapping("update/{productId}")
	public String updateForm(@PathVariable("productId") int id,Model model) {
		Product product=this.dao.getProductById(id);
		model.addAttribute("products", product);
		return"update";
	}
	@RequestMapping(value="/form",method = RequestMethod.POST)
	public RedirectView updateProduct(@ModelAttribute Product product,HttpServletRequest request) {
		System.out.println(product);
		this.dao.updateProduct(product);
		RedirectView redirectView=new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
		
	}
	
	
}
