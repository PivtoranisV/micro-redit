# Micro-Reddit

Micro-Reddit is a simplified backend-only version of Reddit, built with Ruby on Rails. This project focuses on creating data structures and relationships to support post submissions, user comments, and associations without a frontend interface. You can interact with the application via the Rails console.

## Models

- **User**: stores name and email with uniqueness and presence validations.
- **Post**: belongs to a user and has a title and body.
- **Comment**: belongs to a user and a post, with content validation.

## Getting Started

1. Clone the repository.
2. Run rails db:migrate to set up the database.
3. Use rails console to create users, posts, and comments.

Usage

Example commands to test in Rails console:

```ruby

# Create users
user1 = User.create(name: "UserOne", email: "userone@example.com")
user2 = User.create(name: "UserTwo", email: "usertwo@example.com")

# Create a post by user1
post = user1.posts.create(title: "My First Post", body: "Hello, this is my first post!")

# User2 comments on User1's post
comment = post.comments.create(content: "Nice post!", user: user2)

```
