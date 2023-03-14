# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

users = [
  { email: 'user_1@example.com', username: 'User 1', password: 'password', password_confirmation: 'password' },
  { email: 'user_2@example.com', username: 'User 2', password: 'password', password_confirmation: 'password' }
]
User.create!(users)