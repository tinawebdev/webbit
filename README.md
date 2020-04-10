# Webbit

A nearly full-feature Reddit clone built with Ruby on Rails. This app is the result of a course called Hello Rails found at [hellorails.io](https://hellorails.io/)

## Demo
[mywebbit.herokuapp.com](https://mywebbit.herokuapp.com/) 

## Versions used
* ruby '2.6.3'
* rails '6.0.2.2'

## Modeling
Each model will be responsible for different data throughout the app.

* User - focused on the user.
* Submission - The user authors. Has different types (image/video, text, link).
* Community - the category the submission belongs to.
* Comment - a response given to the submission from another user or the current user.
* Subscription - Not be confused with billing of any type. A user can subscribe and unsubscribe to a community.
