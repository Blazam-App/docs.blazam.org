# Templates
Templates are use to define the data applied at user
creation. They allow you to prefill or request entry
of whatever user properties you want.

## Inheritance
One very useful and powerful feature is template
inheritance. Create a base template that contains the
common data for all your users, like `Company` or your `Username` or `Password` algorithms, all
child templates will inherit the values and any changes made to the base template.

## Template Components
### Parent Template
Defines a parent template from which to inherit values from.

### Template Name
The name for the template as will be shown to users on
the create user page.

### Template Category
Organize your templates into categories for easy retrieval.

### Visibility
Control whether the template is visible on `Create User` page.
Useful for base templates that should not be used directly.

### Username, Display Name, and Password
Define the username and display name formats along with  the new password for created users.
An assortment of string variables are available to compute the value
on creation.

!!! example

	For a random two letter 6 digit password you would enter `{Alpha}{Alpha}{Num}{Num}{Num}{Num}{Num}{Num}`

### Fields
This section allows for the addition of any of the user attribute you want to define
After adding a field, you can then define a value, allow the user to edit the value,
or require the value on creation.

### Organizational Unit
Where the new user should be placed. Pretty self-explanatory.

### Groups
The groups to assign the user to after creation. This can include inherited groups
from parent templates.