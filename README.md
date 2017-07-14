# GemPocket
A small project for looking up gems and adding them to your list of favorite gems

### Stack
This project was written and designed using the Rails 4 Framework, Jquery, and Bootstrap 4

### How to Use

1. Type in the name of a gem you'd like to find, this queries for exact matches so pay attention to case

2. Clicking the magnifying glass on the search bar should search the RubyGems database for the entered text. If there is an exact match then the gem name, its info, and its dependencies should be displayed below the search bar.

3. After a gem has been displayed, clicking the star icon should save that gem to the user's favorites. A full list of the user's favorites should be displayed at /favorites.

4. Clicking the star icon on the favorites page should remove the gem from the list.

7. On either page, clicking a gem name should link to that gem's page on rubygems.org (example: https://rubygems.org/gems/foo)

### Installation
Make sure to run bundle update before starting server.

`bundle install`

Since data is saved in localstorage, no migrations are necessary

Start the rails server

`rails s`
