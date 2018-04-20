package com.skilldistillery.jpacrudapp.data;

import java.util.List;

import com.skilldistillery.jpacrudapp.entities.Car;

public interface CarDAO {
	public List<Car> index();
	public Car show(int id);
	public Car create(Car car);
	public Car update(int id, Car car);
	public boolean delete(int id);
	
}
