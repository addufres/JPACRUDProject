package com.skilldistillery.garagebuilderapp.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.jpacrudapp.data.CarDAO;
import com.skilldistillery.jpacrudapp.entities.Car;

@Controller
public class CarController {
	@Autowired
	CarDAO dao;
	
	@RequestMapping(path="index.do", method= RequestMethod.GET)
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		List<Car> garage = dao.index();
		mv.addObject("cars", garage);
		mv.setViewName("WEB-INF/views/index.jsp");
		return mv;
	}
	
	@RequestMapping(path="getCar.do", method = RequestMethod.GET)
	public ModelAndView getFilm(@RequestParam(name="cid") Integer carId) {
		ModelAndView mv = new ModelAndView();
		Car car = dao.show(carId);
		mv.addObject("car", car);
		mv.setViewName("WEB-INF/views/show.jsp");
		return mv;
	}
	
	@RequestMapping(path="addCar.do" , method = RequestMethod.POST)
	public ModelAndView addCarToDb(Car car) {
		ModelAndView mv = new ModelAndView();
		dao.create(car);
		mv.addObject(car);
		mv.setViewName("WEB-INF/views/showSuccess.jsp");
		return mv;
	}
	
	@RequestMapping(path="addCarRedir.do" , method = RequestMethod.GET)
	public ModelAndView goToAddCarJSP() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/addCar.jsp");
		return mv;
	}
	@RequestMapping(path="updateCarRedir.do" , method = RequestMethod.GET)
	public ModelAndView goToUpdateCarJSP(@RequestParam(name="cid") Integer carId) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("car", dao.show(carId));	
		mv.setViewName("WEB-INF/views/updateCar.jsp");
		return mv;
	}
	@RequestMapping(path="updateCar.do" , method = RequestMethod.POST)
	public ModelAndView updateCarInDb(Car car, @RequestParam(name="id") int id) {
		ModelAndView mv = new ModelAndView();
		dao.update(id, car);
		mv.addObject(car);
		mv.setViewName("WEB-INF/views/showSuccess.jsp");
		return mv;
	}
	
	@RequestMapping(path="deleteCar.do", method = RequestMethod.POST)
	public ModelAndView deleteCarFromDb(@RequestParam(name="cid") int id) {
		ModelAndView mv = new ModelAndView();
		dao.delete(id);
		mv.setViewName("WEB-INF/views/deleted.jsp");
		return mv;
	}
	
}
