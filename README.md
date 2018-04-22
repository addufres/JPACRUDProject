# JPACRUDProject

## Skill Distillery SD14 Week 8 Homework

Create a Fullstack C.R.U.D. application that and deploy it to AWS EC2 instance.

## Project Description

The web app must be able to:
Perform C.R.U.D. actions and display the information to the user.

The results are displayed using JSP pages that are given data through a model. The web application and its associated database have been attached and uploaded to an amazon EC2 instance using Tomcat and MySQL. All pages have been written in JSP with EL used for data retrieval.

This application is called PitStop Garage and it acts as a database interface for car collectors to inventory and catalog their garage as well as specific parts for the specific vehicles. It uses a database I created that allows the user to include all relevant information for the vehicle. Right now there is space for one picture and one wiki link per vehicle entered.

The user may search by id number or just scroll through the entire database from the home page. Each car name is a link to the full description of the chosen vehicle. There is also an update button which takes the user to a form page allowing them to update then submit the new information. I pre-populated the fields with the current vehicle information so the user only needs to update what they want and leave the rest alone.

There are options to also delete each vehicle, and to add a brand new vehicle. In future veresion I would like to add current listing on autotrader or similar sites to the webages for each vehicle.

## Technologies Used

JPA API
OOP design
Entity class for Object Relational Mapping
DAO interface and DAOImpl for database query
Controller to act as the middleman
JSP pages to display the data to the user
Takes input from a user through the use of JSP forms and GET and POST methods
Gradle project using the STS tool suite
Bootstrapped jsp pages.

How To Run This Project
Run this through any browser by traveling to the following url.

http://andrewddufresne.com:8080/GarageBuilderApp/

The site loads directly to the web-app. It is also linked to from http://andrewddufresne.com in the projects section.

Lessons Learned and Struggles Encountered
JPA is a breath of fresh air. This project really synced with me and I got through it with relative ease. I did not encounter any major problems past a couple null pointer exceptions when I was setting up controller methods with a command object. I found out that command objects will not read a param from a hidden form field thus I was ending up with null car objects. This was solved by adding a separate RequestParam for the id and passing the rest of the fields to a valid command object. This got everything working properly and it was relative smooth sailing from there. I was able to focus a lot more on my project idea and making it what I wanted which made for a much more enjoyable project experience. I am a big fan of JPA. 
