package com.niit.ecommerce.configuration;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

//import com.niit.ecommerce.model.FeedBackForm;
import com.niit.ecommerce.model.Product;
//import com.niit.ecommerce.model.Register;
//import com.niit.ecommerce.model.SignIn;

@Configuration
@ComponentScan(basePackages = "com.niit.ecommerce")
@EnableTransactionManagement
public class HibernateConfig {
	
	@Bean(name = "dataSource")
	public DataSource getH2dataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/test");
		dataSource.setDriverClassName("org.h2.Driver");
		dataSource.setUsername("sa");
		dataSource.setPassword("");
		return dataSource;
	}

	public Properties getHibernateProperties() {
		Properties properties = new Properties();
		properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		properties.put("hibernate.show_sql", true);
		properties.put("hibernate.format_sql",true);
		properties.put("hibernate.hbm2ddl.auto", "update");
		return properties;
	}

	@Autowired
	@Bean(name = "sessionFactory")
	public SessionFactory getSessionFactory(DataSource dataSource) {
		LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
		sessionBuilder.addProperties(getHibernateProperties());
		//sessionBuilder.addAnnotatedClass(FeedBackForm.class);
		//sessionBuilder.addAnnotatedClass(Register.class);
		//sessionBuilder.addAnnotatedClass(SignIn.class);
		sessionBuilder.addAnnotatedClass(Product.class);
		sessionBuilder.scanPackages("com.niit.ecommerce.model");
		return sessionBuilder.buildSessionFactory();
	}

	@Bean(name = "transactionManager")
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager();
		transactionManager.setSessionFactory(sessionFactory);
		return transactionManager;
	}

}