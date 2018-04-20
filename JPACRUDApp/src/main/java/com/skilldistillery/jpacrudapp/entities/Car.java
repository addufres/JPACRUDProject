package com.skilldistillery.jpacrudapp.entities;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Car {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "year_made")
	private Integer year;
	private String make;
	private String model;
	@Column(name = "engine_installed")
	private String engine;
	private String category;
	private String color;
	private int hp;
	private int tq;
	@Column(name = "zero_to_sixty")
	private double zeroToSixty;
	@Column(name = "top_speed")
	private int topSpeed;
	@Column(name = "aftermarket_parts")
	private String aftermarketParts;
	private double cost;
	@Column(name = "image_url")
	private String image;
	@Column(name = "wiki_page")
	private String wiki;
	private int mileage;
	

	public int getMileage() {
		return mileage;
	}

	public void setMileage(int mileage) {
		this.mileage = mileage;
	}

	public double getCost() {
		return cost;
	}

	public void setCost(double cost) {
		this.cost = cost;
	}

	public Integer getYear() {
		return year;
	}

	public void setYear(Integer year) {
		this.year = year;
	}

	public String getMake() {
		return make;
	}

	public void setMake(String make) {
		this.make = make;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getEngine() {
		return engine;
	}

	public void setEngine(String engine) {
		this.engine = engine;
	}



	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public int getHp() {
		return hp;
	}

	public void setHp(int hp) {
		this.hp = hp;
	}

	public int getTq() {
		return tq;
	}

	public void setTq(int tq) {
		this.tq = tq;
	}

	public int getTopSpeed() {
		return topSpeed;
	}

	public String getAftermarketParts() {
		return aftermarketParts;
	}

	public void setAftermarketParts(String aftermarketParts) {
		this.aftermarketParts = aftermarketParts;
	}

	public int getId() {
		return id;
	}

	public double getZeroToSixty() {
		return zeroToSixty;
	}

	public void setZeroToSixty(double zeroToSixty) {
		this.zeroToSixty = zeroToSixty;
	}

	public void setTopSpeed(int topSpeed) {
		this.topSpeed = topSpeed;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getWiki() {
		return wiki;
	}

	public void setWiki(String wiki) {
		this.wiki = wiki;
	}

	
	public Car(int id, Integer year, String make, String model, String engine, String category, String color, int hp,
			int tq, double zeroToSixty, int topSpeed, String aftermarketParts, double cost, String image, String wiki,
			int mileage) {
		super();
		this.id = id;
		this.year = year;
		this.make = make;
		this.model = model;
		this.engine = engine;
		this.category = category;
		this.color = color;
		this.hp = hp;
		this.tq = tq;
		this.zeroToSixty = zeroToSixty;
		this.topSpeed = topSpeed;
		this.aftermarketParts = aftermarketParts;
		this.cost = cost;
		this.image = image;
		this.wiki = wiki;
		this.mileage = mileage;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Car [id=").append(id).append(", year=").append(year).append(", make=").append(make)
				.append(", model=").append(model).append(", engine=").append(engine).append(", category=")
				.append(category).append(", color=").append(color).append(", hp=").append(hp).append(", tq=").append(tq)
				.append(", zeroToSixty=").append(zeroToSixty).append(", topSpeed=").append(topSpeed)
				.append(", aftermarketParts=").append(aftermarketParts).append(", cost=").append(cost)
				.append(", image=").append(image).append(", wiki=").append(wiki).append(", mileage=").append(mileage)
				.append("]");
		return builder.toString();
	}

	public Car() {
	}

}
