# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
- [x] Use ActiveRecord for storing information in a database
- [x] Include more than one model class (list of model class names e.g. User, Post, Category)
  -- User, Product, Cart, Order
- [x] Include at least one has_many relationship (x has_many y e.g. User has_many Posts)
  -- Cart has_many products
- [x] Include user accounts
- [x] Ensure that users can't modify content created by other users
  -- user gets directed to a cart matched to their login/user id (cart is specific to them)
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
  -- Cart: read, edit, delete items (belongs_to User); Order: create order (belongs_to User)
- [x] Include user input validations
  -- fields required; email must be unique, password authenticated
- [x] Display validation failures to user with error message (example form URL e.g. /posts/new)
  -- sign-up/login page show errors
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code
  -- done

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
