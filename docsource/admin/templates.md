# Templates
Templates are used to define the data applied at user
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

In addition, you can pull the first X characters of a field or perform
regex matches.


### Variables
`{variable:modifier[argument]}`, `{variable:modifier}`, `{variable[argument]}`, or just `{variable}`

Variables Expressions must be surrounded by curly braces eg: `{fn}`

Modifiers and Arguments are both optional

|Variable|Variable Description|Modifier|Modifier Description|Argument|Argument Description|
| -------- | -------- | -------- | -------- | -------- | -------- |
|fn|First Name|u, l, regex|Upper Case, Lower Case, Regular Expression|0-10000, Regex Expression eg: (?<!\d)([a-zA-Z])(\d)| Pulls the first x number of characters, A custom regular expression in match mode|
|fi|First Initial| | | | |
|mn|Middle Name|u, l, regex|Upper Case, Lower Case, Regular Expression|0-10000, Regex Expression eg: (?<!\d)([a-zA-Z])(\d)|Pulls the first x number of characters, A custom regular expression in match mode|
|mi|Middle Initial| | | | |
|ln|Last Name|u, l, regex|Upper Case, Lower Case, Regular Expression|0-10000, Regex Expression eg: (?<!\d)([a-zA-Z])(\d)|Pulls the first x number of characters, A custom regular expression in match mode|
|li|Last Initial| | | | |
|username|Username| | | | |
|alphanum|Random letter or number|u, l|Upper Case, Lower Case| | |
|alpha|Random letter|u, l|Upper Case, Lower Case| | |
|num|Random number| | | | |

!!! example "Examples"

	|Expression|Description|
	| ----- | ----- |
	|`{fn}`|Returns the whole first name|
	|`{fn[1]}` or `{fi}`|Returns the first initial|
	|`{fn:l[2]}`|Returns the first two characters of the first name in lower case|
	|`{ln:regex[^(.{3})(.*Jr)$]}`|A regex search on the last name pulling the first 3 characters and includes Jr if the last name ends in Jr|

### Account Options
#### Allow Username Override
If enabled, users will be able to change the generated username.
!!! note

	Super-admins are always able to override usernames

#### Require Password Change
If enabled, the associated checkbox in ADUC will be checked and users
will be asked to change their password upon first domain login.

#### Send Welcome Email
If enabled, an email containing the username and password will be sent. If 
the email field is generated or static the email will go to that address. If
no address is entered into the email field, the user will be asked for a destination.

#### Ask For Alternate Email
If enabled, Blazam will always ask for a custom destination address for credential emails.

### Formula Sim
The formula simulator allows you to more easily construct your generated variable
expressions. Preview your changes on the fly while constructing your configuration.

### Fields
This section allows for the addition of any of the user attribute you want to define
After adding a field, you can then define a value, allow the user to edit the value,
or require the value on creation.

### Organizational Unit
Where the new user should be placed. Pretty self-explanatory.

### Groups
The groups to assign the user to after creation. This can include inherited groups
from parent templates.