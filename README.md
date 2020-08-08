# README

This Rails project is a backend API for HarmonyHacks 2 on devpost.com
https://harmonyhacks2.devpost.com/
We used Postgresql so you must create the db first.

In order to get started:
1. bundle install 
2. rails db:create
3. rails db:migrate 
4. rails db:seed 
5. rails s

The routes are RESTful and the models are 
1. users [:get, :create]
2. events [:index, :create, :update]
3. responses [:index, :create]

## What it does
Our application is a sort of panic button. When encountering a situation that may require evidence, it's hardly the best time for you, the person in need, to take out your camera and start recording. In recent times we've seen how footage from altercations can change the outcome of cases and help get justice for those who need it the most. 

1. **The panic button** is the main feature. Using GPS data, it will notify people in the area with the app that you need help gathering evidence. If someone nearby sees the push notification and is nearby they can be of help just by recording what happens. 
2. **Following up** if you pressed the panic button, it will take you to a follow up screen so that you can let the people who obtained evidence for you know whether you need it or you are fine. 
3. **Communicating** for those who were nearby, they might have something to say or evidence to offer and they can respond to your request and follow up after the event. 
4. **Access** to all the data about the incidents and how they were resolved is also available through the app and you can see events that happened in your vicinity. 

## How we built it
For the backend, we used Ruby on Rails to serve as an API for our data models. Following RESTful practices we have created a relational database and an API that responds to all of our requests. 
For the frontend, we used React-Native with the Expo platform. We used expo-notifications, react-native-maps, react-navigation, redux, thunk, react-native-community's picker and async-storage to supplement the basic Expo package. 

## Challenges we ran into
We had to think about what could go wrong. Legal issues are real, police harassment is also real so we had to make our app without usernames or logins. It is anonymous so that people can feel protected while they try to help others. 

## What's next for Record Me 
Integration with other apps, public cctv access and simply links to legal resources were areas that can help our app. Other features we would like to expand on is Google/Siri/Bixby command integration as well. 

