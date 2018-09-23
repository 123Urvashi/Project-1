package com.niit.ecommerce.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ecommerce.configuration.HibernateConfig;
import com.niit.ecommerce.dao.ProductDao;
import com.niit.ecommerce.dao.ProductDaoImpl;
import com.niit.ecommerce.model.Product;

import junit.framework.TestCase;

public class ProductDaoImplTest1 extends TestCase {
	ApplicationContext context = new AnnotationConfigApplicationContext(HibernateConfig.class, ProductDaoImpl.class);
	ProductDao productDao = (ProductDao) context.getBean("productDaoImpl");

	public void testSaveProduct() {
		Product product = new Product();
		product.setPrice(100);
		product.setQuantity(1);
		product.setProductname("Water Bottle");
	
		product = productDao.saveProduct(product);
		assertTrue(product.getId() > 0); // TC

	}

	public void testGetProduct() {
		Product product3 = productDao.getProduct(1);
		Product product1 = productDao.getProduct(3);// id=3,
		Product product2 = productDao.getProduct(4);// id==4
		// Null or Not null
		assertNotNull(product1);
		assertNotNull(product3);// product3!=null, if it is true, success
		assertNull(product2);// product2==null,if it is true, success

		// check for prices [actual price returned is same as expected price for id=3
		double expectedPrice = 2000;
		double actualPrice = product1.getPrice();
		assertTrue(expectedPrice == actualPrice);// if true, success
	}

	/*
	 * public void testUpdateProduct() { //Get product object for the id=3 //Update
	 * the price and quantity of the product id=3 Product
	 * product=productDao.getProduct(3); product.setPrice(2000);
	 * product.setQuantity(25); productDao.updateProduct(product);//product has
	 * updated price and update quantity assertTrue(product.getPrice()==2000);
	 * assertTrue(product.getQuantity()==25); }
	 */

}