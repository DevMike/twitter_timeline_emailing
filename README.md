About
=
The project is one part of an app based on microservice architecture. 
This sub-project is receiving messages via RabbitMQ message broker and sends them to respective email.  
Another sub-project is https://github.com/DevMike/twitter_timeline_parser

Developer Setup Guide
=

1. Install [RVM](https://rvm.io/)
2. Install ruby 2.7.1
3. `bundle install`
4. Install&Run [RabbitMQ](https://www.rabbitmq.com/install-homebrew.html)
5. `.env.sample` -> `.env`, set proper values

Run the app
---

  Run message broker `hutch`   
