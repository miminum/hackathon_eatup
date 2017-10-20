# EATup

## Description
EATup is an online social website application that facilitates meetups between individuals with the common interest of eating at restaurants based on the users chosen cuisine for that day. It brings people together with similar food interest that matches people based on their food preferences for that day. This application also taps into the Zomato API allowing users to have access the restaurants, their locations and reviews, making it easier for the user to select a restaurant, without the need to leave the website. 

Based off Maslow's Hierachy of Needs, the idea behind the application was to combine individuals psychological need of belongingness and love, and their basic needs of food. This application enables people to form relationships with strangers, and fulfill their needs/interests in food. This fills the gap of individuals wanting to try restaurants, but do not have anyone to share that experience with.

## The Problem
- [The IBISWorld Market Research Report](https://www.ibisworld.com.au/industry-trends/market-research-reports/accommodation-food-services/restaurants.html) reports that the foodie culture continues to rise.
- Consumer demand for quality food and fine-dining experiences have fuelled revenue growth year on year.
- It can be perceived that these food and fine-dining is experienced with a close friend or family. However, there are times where individuals can find themselves not having a companion, friend or family to share this experience with


## The Solution
Bringing people together with similar food interests with an application that matches people together based on their food preferences for that day.

## Target Audience
* the companionless foodie
  - lonely office workers / students / travellers
  - singles with a particular interest in food whom what to meet other foodies

## Assessment of Other Competitors
* Meetup - Has the capability of facilitating offline meetings at various locations. The point of difference between EATup and Meetup is that EATup focuses just on food and enables instant private conversations between users. The UX of Meetup requires users to set their preferences of their interests, but does not go into the detail of choosing a meeting place that is agreed by the organiser and the attendee.
* Tinder - Is a dating website that facilitates communication between mutually interested users to chat. The EATup application can also facilitate communication between users, however, its sole purpose is not just for dating, but to bring users with a particular food interest together (i.e. people looking for a companion to eat with)

## Minimum Variable Product (MVP)
* Sign on capability
* Ability to view other users profiles whom share the same food preference for that day
* Create conversations whom share the same food preference for that day
* View restaurants for their chosen cuisine
* Inbox view of all conversations created with other users

## Enhancements (if time permits)
* Favourites (Persons) List
* Block User Feature
* Google maps integration to enable users to find restaurants nearby

## User Stories
* As a User, I would like to connect with other Users with similar food interests near by in order to form a relationship
* As a User, I would like to select the type of food I'd like to eat each time I log in, in order for the application to reflect what I feel like eating that day
* As a User, once I select the type of food I'd like to eat, I would like to see the other users whom share the same food interests that day, in order to connect with people whom have similar food preferences that day
* As a User, I would like to view other users profile in order to determine whether I would like to meet with them
* As a User, I would like to view the restaurants near by my location, in order to filter out restaurants that are not the appropriate travelling distance
* As a User, I would like to view the profile of a restaurant in order to determine whether if I would want to go to that restaurant
* As a User, I would like to message other users with similar interests in order to communicate/organise a time/date to meet up
* As a User, I would like to see all the people I have matched with in an inbox, in order to view all my matches all in the one place
* As a User, I would like to be notified via email on a match, in order to allow me not to constantly be on the application to see if there is a match

## Wireframes
![GitHub Logo](/tree/master/app/assets/images/wireframe1.png)

![alt text](https://raw.githubusercontent.com/miminum/hackathon_eatup/tree/master/app/assets/images/wireframe1.png)


![Alt text](/relative/path/to/img.jpg?raw=true "Optional Title")
![Alt text](/tree/master/app/assets/images/wireframe1.png)


https://www.figma.com/file/KBWd0F420IaEe6uTJF3M5M5N/Hackathon

## Entity Relationship Diagram
http://dbdesigner.net/designer/schema/120256

## Gems
* Bootstrap - Styling of Views
* Dotenv - Hiding of keys used in the application
* Devise - Set up of Users
* Shrine - Enables the uploading of profile pictures
* Imagemagick - Is used as part of the Shrine
* HTTParty - Enables the Zomato API to be used within the application
* Geocoder - Planned to be used for the Google maps integration (if time permitted)
* Font awesome - Assist in styling of views

## API
[Zomato API](https://developers.zomato.com/api#headline1) that contains the Zomato database of restaurants, cities, cuisines and ratings. This API leverages off the HTTParty gem to enable to be used within the application
