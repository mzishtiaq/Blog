# Overview
======
A simple blog that has articles, commenting and email subscription for notifications of new articles.

## Features
-------
+ User can create, modify and delete articles.
+ SEO-friendly URLs.
+ Article body is written and rendered in Markdown.
+ Visitors can leave comments on the articles.
+ Visitors can subscribe to the blog with their email address.
+ Subscribers are sent an email notification when a new article is posted.
+ Subscription emails contain a link that can be clicked to view the article.
+ Subscription emails contain a link that can be clicked to unsubscribe.

## Technologies
-------
+ Rails 4.2.0
+ Ruby 2.3.1
+ Rspec 3.5.3
+ Capybara
+ Postgresql

Installation
------------
Clone the repository:
```
$ git clone https://github.com/mzishtiaq/Blog.git
$ cd Blog
```
Get the required gems:
```
$ bundle install
```
Create the database:
```
$ rake db:create
$ rake db:migrate
```
Configure the email securely:
```
$ bundle exec figaro install
```
Add your gmail credentials to config/application.yml using environment variables.
Please make sure you have allowed "Access for less secure apps". To do so, please sign in your gmail
account and click [here](http://www.google.com/settings/security/lesssecureapps)

Running the app
---------------
Run the rails server:
```
$ bin/rails s
```
Open another terminal window
```
$ open http://localhost:3000 //OS X
$ xdg-open http://localhost:3000 //Linux
```
Running the tests
---------------
Run the tests using rake:
```
$ rake
```
