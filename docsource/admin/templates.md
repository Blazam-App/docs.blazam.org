# Templates
Templates are used to define the data applied at user
creation. They allow you to prefill or request entry
of whatever user properties you want.

## Inheritance
One very useful and powerful feature is template
inheritance. Create a base template that contains the
common data for all your users, like `Company` or your `Username` or `Password` algorithms. All
child templates will inherit the values, and any changes made to the base template.

## Template Components
### Parent Template
Defines a parent template from which to inherit values.

### Template Name
The name for the template as it will be shown to users on
the create user page.

### Template Category
Organize your templates into categories for easy retrieval.

### Visibility
Control whether the template is visible on the `Create User` page.
Useful for base templates that should not be used directly.

### Username, Display Name, and Password
Define the username and display name formats along with the new password for created users.
An assortment of string variables is available to compute the value
on creation.

In addition, you can pull the first X characters of a field or perform
regex matches.

### Variables
`{variable:modifier[argument]}`, `{variable:modifier}`, `{variable[argument]}`, or just `{variable}`

Variable expressions must be surrounded by curly braces, e.g., `{fn}`

Modifiers and arguments are both optional. Modifiers can be chained together, e.g., `{fn:du}` removes diacritics and converts to uppercase.

Variable expressions can be chained together, and anything outside of curly braces will
be copied as is, e.g., `{fi}{ln}`

|Variable|Variable Description|Modifier|Modifier Description|Argument|Argument Description|
| -------- | -------- | -------- | -------- | -------- | -------- |
|fn|First Name|d, u, l, regex|Removes diacritics, Force Upper Case, Force Lower Case, Regular Expression|0-10000, Regex Expression e.g., (?<!\d)([a-zA-Z])(\d)| Pulls the first x number of characters, a custom regular expression in match mode|
|fi|First Initial|d, u, l|Removes diacritics, Force Upper Case, Force Lower Case| | |
|mn|Middle Name|d, u, l, regex|Removes diacritics, Force Upper Case, Force Lower Case, Regular Expression|0-10000, Regex Expression e.g., (?<!\d)([a-zA-Z])(\d)|Pulls the first x number of characters, a custom regular expression in match mode|
|mi|Middle Initial|d, u, l|Removes diacritics, Force Upper Case, Force Lower Case| | |
|ln|Last Name|d, u, l, regex|Removes diacritics, Force Upper Case, Force Lower Case, Regular Expression|0-10000, Regex Expression e.g., (?<!\d)([a-zA-Z])(\d)|Pulls the first x number of characters, a custom regular expression in match mode|
|li|Last Initial|d, u, l|Removes diacritics, Force Upper Case, Force Lower Case| | |
|username|Username|d, u, l|Removes diacritics, Force Upper Case, Force Lower Case| | |
|alphanumsym|Random letter, number, or symbol|u, l|Force Upper Case, Force Lower Case| | |
|alphanum|Random letter or number|u, l|Force Upper Case, Force Lower Case| | |
|alpha|Random letter|u, l|Force Upper Case, Force Lower Case| | |
|sym|Random symbol| | | | |
|num|Random number| | | | |
|#|Username Number Incrementor| | | | |
|.|Username Incrementor Separator| | | | |
|(space)|Username Incrementor Separator| | | | |
|_|Username Incrementor Separator| | | | |
|-|Username Incrementor Separator| | | | |

!!! example "Examples"

	|Expression|Description|
	| ----- | ----- |
	|`{fn}`|Returns the whole first name|
	|`{fn[1]}` or `{fi}`|Returns the first initial|
	|`{fn:l[2]}`|Returns the first two characters of the first name in lower case|
	|`{fi:l}{ln:l}{.}{#}`|Returns the first initial in lower case, the last name in lower case, and if a username conflicts, a period separator and an incrementing number to resolve the conflict.|
	|`{fn:du}`|Returns the whole first name with diacritics removed and in upper case. Modifiers can be chained.|
	|`{ln:regex[^(.{3})(.*Jr)$]}`|A regex search on the last name pulling the first 3 characters and includes Jr if the last name ends in Jr|

### Account Options
#### Allow Username Override
If enabled, users will be able to change the generated username.
!!! note

	Super-admins are always able to override usernames.

#### Require Password Change
If enabled, the associated checkbox in ADUC will be checked and users
will be asked to change their password upon first domain login.

#### Send Welcome Email
If enabled, an email containing the username and password will be sent. If 
the email field is generated, static, or editable, the email will go to that address. If
no address is entered into the email field, the user will be asked for a destination.

#### Ask For Alternate Email
If enabled, Blazam will always ask for a custom destination address for credential emails.

### Formula Sim
The formula simulator allows you to more easily construct your generated variable
expressions. Preview your changes on the fly while constructing your configuration.

### Fields
This section allows for the addition of any user attribute you want to define.
After adding a field, you can then define a value, allow the user to edit the value,
or require the value on creation.

### Organizational Unit
Where the new user should be placed. Users must have "Create User" permission in this OU to use this template.

### Groups
The groups to assign the user to after creation. This can include inherited groups
from parent templates.