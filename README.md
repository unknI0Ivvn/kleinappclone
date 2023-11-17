KleinAnClone
Final project at Tel-Ran on the topic “Service for selling used items”

About project
Welcome to my web application for selling used items!

Our application is designed to help users sell and buy things quickly and conveniently. Administrators can easily block a user while also gaining full access to their information

Key features for anonymous users include viewing menus with images and descriptions of pizzas, searching by pizza name, viewing a list of pizzerias and searching by address, and viewing the selection of pizzas at a particular pizzeria.

Administrators can use the REST API to manage the user list.

We strive to provide our users with a convenient and intuitive interface, as well as reliable and fast operation of the application. Thank you for using our service!

Stakeholders
Admin (administrator):

manages the Menu (list of users with detailed description);
Can block users
Give them admin status
Customer (anonymous user):

receives a list of products, even without registration;
performs a search by the name of the product of interest;
receives a list of other users' products;
gets a list of contact information about other users
Adds an item for sale with a full description and photos of the item
User story
EPIC-1: "Development of the Admin interface"
US-1.1:

Description:
As Admin, I want to be able to manage the list of users, see their data and block them, or vice versa, elevate them to admin status

Acceptance Criteria:

Admin can see the user's contact information

Admin can block a user along with his product, others will not be able to see items for sale
Admin can unblock
An admin can also make another member an admin

EPIC-2: "Customer Interface Development"
US-2.1:

Description:
As a Customer, I want to receive a list of available products for sale so I can choose the right one for purchase.

Acceptance Criteria:

The list of products is displayed on the main page.
Each Pizza product has a name, description, price, size and image.
US-2.2:

Description:
As a Customer, I want to be able to search for a product by name to quickly find the item.

Acceptance Criteria:

On the main page there is a field to search for a product by name.
Search results appear in real time as you type.
When clicking on the search results, the user goes to a page with information about the selected product and seller details for contact.
US-2.3:

Description:
As a Customer, I want to see the product before I buy it.

Acceptance Criteria:

When you click on the product you like, you can see a photo
Each product has data from the user for communication
US-2.4:

Description:
As a Customer, I want to be able to see what else the seller is selling

Acceptance Criteria:

After going to the product you like, you can see the seller’s contact and after clicking on his name, you can see what else the seller sells