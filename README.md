# Rails Routing Basics Lab

## Learning Goals

- Create a route
- Map a route to a controller/action
- Send JSON data as a response

## Introduction

We'll continue building our API for viewing student data. In this lesson, we'll
add some routes and controller logic for displaying data about our students.

To get set up, run:

```sh
bundle install
rails db:migrate db:seed
```

This will download all the dependencies for our app and set up the database.

## Instructions

### Index Route

- Create a route for making a `GET` request to `/students`
- Generate a `StudentsController` with an `index` action for handling the route;
  don't forget to pass the `--no test framework` argument!
- In the `index` action, return JSON data representing a list of all
  students

### Grades Route

- Create a route for making a `GET` request to `/students/grades`
- Add a `grades` action in the `StudentsController` for handling that route
- In the `grades` action, return JSON data representing a list of all students,
  ordered by grade from highest to lowest

### Bonus: Highest Grade Route

**Un-comment out the last test in `/spec/requests/students_spec.rb` to complete the bonus.**

- Create a route for making a `GET` request to `/students/highest-grade`
- Add a `highest_grade` action in the `StudentsController for handling that
  route
- In the `highest_grade` action, return JSON data representing the one student
  with the highest grade
- **Note**: while the other two routes should return an array of data, this
  route should return just one student object!

## Resources

- [Rails Routing](https://guides.rubyonrails.org/routing.html)
- [Active Record Query Interface](https://guides.rubyonrails.org/active_record_querying.html)
