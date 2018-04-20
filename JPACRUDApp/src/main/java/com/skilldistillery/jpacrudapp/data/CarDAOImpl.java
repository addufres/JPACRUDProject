package com.skilldistillery.jpacrudapp.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.skilldistillery.jpacrudapp.entities.Car;

@Transactional
@Component
public class CarDAOImpl implements CarDAO {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public List<Car> index() {
		String query = "SELECT c FROM Car c";
		List<Car> garage = em.createQuery(query, Car.class).getResultList();
		return garage;
	}

	@Override
	public Car show(int id) {
		return em.find(Car.class, id);
	}
	
	@Override
	public Car create(Car car) {
		em.persist(car);
		em.flush();
		return car;
	}

	@Override
	public Car update(int id, Car car) {
		Car managed = em.find(Car.class, id);
		System.out.println(car);
		managed.setYear(car.getYear());
		managed.setMake(car.getMake());
		managed.setModel(car.getModel());
		managed.setEngine(car.getEngine());
		managed.setCategory(car.getCategory());
		managed.setColor(car.getColor());
		managed.setHp(car.getHp());
		managed.setTq(car.getTq());
		managed.setZeroToSixty(car.getZeroToSixty());
		managed.setTopSpeed(car.getTopSpeed());
		managed.setAftermarketParts(car.getAftermarketParts());
		managed.setCost(car.getCost());
		managed.setImage(car.getImage());
		managed.setWiki(car.getWiki());
		managed.setMileage(car.getMileage());
		em.persist(managed);
		em.flush();
		return managed;
	}

	@Override
	public boolean delete(int id) {
		if (em.find(Car.class, id) == null) {
			return false;
		} else {
			Car car = em.find(Car.class, id);
			em.remove(car); // performs the delete on the managed entity
			return true;
		}
	}
}
