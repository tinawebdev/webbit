# Webbit

A nearly full-feature Reddit clone built with Ruby on Rails. This app is the result of a course called Hello Rails found at [hellorails.io](https://hellorails.io/)

## Demo
[mywebbit.herokuapp.com](https://mywebbit.herokuapp.com/) 

## Versions used
* ruby '2.6.3'
* rails '6.0.2.2'

## Modeling

Model           | Description
----------------|----------------------
User            | Focused on the user
Submission      | The user authors. Has different types (image/video, text, link)
Community       | The category the submission belongs to
Comment         | A response given to the submission from another user or the current user
Subscription    | Not be confused with billing of any type. A user can subscribe and unsubscribe to a community

## Installation

To use the code:

1. Open Terminal and change the current working directory to the location where you want the cloned directory to be made.
Run the following to clone the repository using HTTPS:
```
git clone https://github.com/kgoncharova/webbit.git
```
2. In the command line go to the directory with the files downloaded.
```
cd webbit
```

3. Install all necessary gems:
```
bundle install
```
4. Install all the dependencies listed within package.json in the local node_modules folder:
```
yarn install
```
5. To run migrations:

```
bundle exec rails db:migrate
```
6. To load the data from db/seeds.rb into the database:
```
bundle exec rails db:seed
```
