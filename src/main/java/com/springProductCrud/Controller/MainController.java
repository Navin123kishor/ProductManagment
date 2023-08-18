package com.springProductCrud.Controller;

import java.util.List;
import java.util.concurrent.Flow.Publisher;

import javax.servlet.http.HttpServletRequest;

import org.apache.taglibs.standard.lang.jstl.test.beans.PublicBean1;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.springProductCrud.dao.ProductDao;
import com.springProductCrud.model.Product;

@Controller
public class MainController {

	@Autowired
	private ProductDao productDao;
	
	@RequestMapping("/home")
	public String home(Model m) {
		List<Product> list = this.productDao.getAllproducts();
		m.addAttribute("products", list);
		return "index";
	}
	
	@RequestMapping("/addproduct")
	public String addProduct(Model m) {
		m.addAttribute("title", "productCrud");
		return "add_product_form";
	}
	
	@RequestMapping(path="/handleform", method = RequestMethod.POST)
	public RedirectView handForm(@ModelAttribute Product product,HttpServletRequest request ) {
		//System.out.println(product);
		this.productDao.createProduct(product);
		
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/home");
		return redirectView;
	}
	
	// Delete Handler //
	
	@RequestMapping("/delete/{productId}")
	public RedirectView deleteProduct(@PathVariable("productId") int pId ,HttpServletRequest request) {
		
		this.productDao.delete(pId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/home");
		return redirectView;
		
	}
	
	// Update a Product 
	@RequestMapping("/update/{productId}")
	public String update(@PathVariable("productId") int pId ,HttpServletRequest request, Model m) {
		
		Product prd = this.productDao.getproduct(pId);
		m.addAttribute("product", prd);
		return "change";
	}
}
