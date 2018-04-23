package com.skilldistillery.jpacrudapp.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import com.skilldistillery.jpacrudapp.entities.Car;

class CarTest {
	private EntityManagerFactory emf;
	private EntityManager em;
	private Car car;

	@BeforeEach
	public void setUp() throws Exception {
		emf = Persistence.createEntityManagerFactory("CrudApp");
		em = emf.createEntityManager();
		car = em.find(Car.class, 1);
	}

	@AfterEach
	public void tearDown() throws Exception {
		em.close();
		emf.close();
		car = null;
	}

	@Test
	@DisplayName("Test Car entity mappings")
	void test_customer_mappings() {
		assertEquals("Cheverolet", car.getMake());
		assertEquals("Monte Carlo SS", car.getModel());
	}
}