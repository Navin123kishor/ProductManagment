package com.springProductCrud.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.springProductCrud.model.Product;

@Component
public class ProductDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	// create Product
	@Transactional
	public void createProduct(Product product) {
		
		this.hibernateTemplate.saveOrUpdate(product);
	}
	
	//getAllProduct
	public List<Product> getAllproducts(){
		
		List<Product> list = this.hibernateTemplate.loadAll(Product.class);
		return list;
	}
	
	// Delete a product .
	@Transactional
	public void delete(int pid) {
		Product product = this.hibernateTemplate.get(Product.class, pid);
		this.hibernateTemplate.delete(product);
	}
	
	// Get a Single Product
	public Product getproduct(int pid) {
		return this.hibernateTemplate.get(Product.class, pid);
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
}
