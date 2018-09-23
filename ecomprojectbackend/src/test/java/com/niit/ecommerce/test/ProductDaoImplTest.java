package com.niit.ecommerce.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.ecommerce.configuration.HibernateConfig;
import com.niit.ecommerce.dao.ProductDao;
import com.niit.ecommerce.dao.ProductDaoImpl;
import com.niit.ecommerce.model.Product;

import junit.framework.TestCase;

public class ProductDaoImplTest extends TestCase {
	ApplicationContext context = new AnnotationConfigApplicationContext(HibernateConfig.class, ProductDaoImpl.class);
	ProductDao productDao = (ProductDao) context.getBean("productDaoImpl");

	public void testSaveProduct() {

	}

	public void testGetProduct() {
		Product product1 = productDao.getProduct(1);
		// Product product2=productDao.getProduct(3);//id=3,
		// Product product3=productDao.getProduct(4);//id==4
		// Null or Not null
		assertNotNull(product1);
		// assertNotNull(product3);
		// assertNull(product2);

		// check for prices [actual price returned is same as expected price for id=3
		double expectedPrice = 1000;
		double actualPrice = product1.getPrice();
		assertTrue(expectedPrice == actualPrice);

	}

}
