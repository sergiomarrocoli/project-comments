# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

users = [
  { email: 'sergio@example.com', username: 'Sergio', password: 'password', password_confirmation: 'password' },
  { email: 'user_2@example.com', username: 'User 2', password: 'password', password_confirmation: 'password' }
]
User.create!(users)

projects = [
  { title: 'Project Comments App', status: 'to do' },
  { title: 'Project 2', status: 'in progress' },
  { title: 'Project 3', status: 'complete' }
]
Project.create!(projects)

user_1 = User.first
user_2 = User.second
project = Project.first

comments = [
  { body: "I'm assigned this ticker and have a few questions. Do we know what kind of authentication is required?", user: user_1, project:},
  { body: "Standard Devise setup for this, but for now don't allow sign up.
          Until we implement permissions we only want to allow users who we know should be commenting on these projects", user: user_2, project:},
  { body: 'Do we know what project statuses I need to implement?', user: user_1, project:},
  { body: "Eventually there will be a UI for users to create custom statuses. For testing purposes just add 'to do', 'in progress' and 'complete'", user: user_2, project:},
  { body: 'Do we have designs for this?', user: user_1, project:},
  { body: 'No, and the schedule is pretty tight. I know your css is terrible, just do what you can.', user: user_1, project:}
]
Comment.create!(comments)
