## Installation
Blazam is a compatible PWA (Progressive Web Application). For easy access,
you can opt to "install" the web app to your local device (desktop/laptop/mobile).

## Dashboard Widgets
The home page allows you to set up and organize an assortment of dashboard widgets.

You must be provided relevant read permissions somewhere in the directory to be able
to add each widget.

The full set of widgets is:

* New Users
* New Groups
* New Computers
* New OUs
* New Printers
* New Contacts
* Changed AD Entries
* Changed Passwords
* Locked Out Users
* Favorites
* Stale Users
* Stale Computers
* Deleted AD Entries (Super-admins only)
* Application Logons (Super-admins only)

## Main Menu
The main menu is shown on the left side of the screen. Mobile users can use the three horizontal
bar "hamburger" button in the top left to open the main menu.

The available options depend on the permissions applied to your account.

Possible options include:

* Home
* Browse
* Create
	* User
	* Contact
	* Group
	* OU
* Recycle Bin (Super-admins only)
* Configure (Super-admins only)
	* Settings
	* Permissions
	* Fields
	* Templates
	* Rules
	* Notifications
	* Webhooks
	* API Tokens
* Audit (Super-admins only)

## Universal Search
### Search Type
By default, Blazam searches all Active Directory object types. To narrow your search, use the type filter
to specify the object type you are looking for.

### Enabled Only
When green, the search will only return enabled accounts (for users and computers); otherwise, disabled
accounts will be included in search results.

### Search Box
The search box in the center of the AppBar is the key tool for navigating Blazam.
Auto-complete searches are performed, respecting the type filter, against all accessible
AD objects.

Searches are currently performed against the first name, last name, display name, and username; emails are excluded.

## Notifications
Notifications can be found by clicking the bell icon in the top right next to your `User Button`.

Unread notifications will cause a red dot with the unread count next to the icon to alert you.

Clicking the icon with the notifications panel open will close it.

## User Button
The user button provides access to change your email address, the color theme of Blazam, as well as upload an avatar icon to use for personalization.

There is also a button that will take you directly to Blazam's documentation.

The last option in the menu is, of course, sign out.
