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

2. Download the repository using the [instruction](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository).

3. In the command line go to the directory with the files downloaded.
```
cd webbit
```

4. Install all necessary gems:
```
bundle install
```

5. Install all the dependencies listed within package.json in the local node_modules folder:
```
yarn install
```

6. To run migrations:
```
bundle exec rails db:migrate
```

7. To load the data from db/seeds.rb into the database:
```
bundle exec rails db:seed
```
