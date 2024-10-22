## User Guide

### Installation
Blazam is a compatible PWA (Progressive Web Application). For easy access
you can opt to "install" the webapp to your local device (desktop/laptop/mobile).

### Dashboard Widgets
The home page allows you to set up and organize an assortment of dashboard widgets.

You must be provided relevant read permissions somewhere in the directory to be able
to add each widget.


The full set of widgets are:

* New Users
* New Groups
* New Computers
* New OU's
* New Printers
* Changed AD Entries
* Changed Passwords
* Locked Out Users
* Favorites
* Application Logons (Super-admins only)

### Universal Search
#### Search Type
By default Blazam searches all Active Directory object types. To narrow your search, use the type filter
to specify the object type you are looking for.

#### Enabled Only
When green the search will only return enabled accounts (Users and computers), otherwise disabled
accounts will be included in search results.

#### Search Box
The search box in the center of the AppBar is the key tool for navigating Blazam.
Auto-complete searches are performed, respecting the type filter, against all accessible
AD objects. 

Searches are currently performed against the first name, last name, display name, and username, emails are excluded.