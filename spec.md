# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) - Students have many lessons.
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User) - Lessons belong to students and to coaches.
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients) - Coaches have many students. 
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients) - Coaches have many lessons and many students through lessons. Students have many lessons and many coaches through lessons. 
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity) - Student can set a lesson's date and this is accessible by the coach and the student.
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item) - The Student model uses custom validations and built-in validations. 
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes) - Students can view coaches and filter based on years of experience and coach's region. These filters leverage scope methods in the Coach model. 
- [x] Include signup - Student can sign up.
- [x] Include login - Student can log in.
- [x] Include logout - Student can log out from any page. 
- [x] Include third party signup/login (how e.g. Devise/OmniAuth) - Student can use Github to authenticate. If a Student logs in for the first time with Github, they can edit their profile to ensure that they have all of their information filled in.
- [x] Include nested resource show or index (URL e.g. users/2/recipes) - Students can view individual coaches, all of their lessons, individual lessons, or create new lessons for that specific coach.
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new) - Students can view a coach and schedule a new lesson with that coach.
- [x] Include form display of validation errors (form URL e.g. /recipes/new) - Students cannot sign up unless all fields are filled in correctly. If not, the errors appear on the page.

Confirm:
- [x] The application is pretty DRY - The application has cut down code where possible.
- [x] Limited logic in controllers - Controllers are as skinny as possible.
- [x] Views use helper methods if appropriate - Views use helper methods.
- [x] Views use partials if appropriate - New students and editing students use the same partial. 