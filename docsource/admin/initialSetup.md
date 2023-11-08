# Initial Setup

After installing Blazam, open a browser you your published website.

Upon first launch the application will enter an installation wizard
to guide you in completing the initial configuration.

## Database

### Pre-requisites
- A database must be created prior to first launch.
- A user account with permission to write to the database and create and delete tables must also be provided.

!!! info

    The web installer ensure the prerequisites are fulfilled before allowing installation.


The database page confirms that the setting you configured in appsettings.json (or as performed by the web installer) are correct and a connection to the 
database is successful.

You can then "install" the database, which will set up all the neccessary tables and seed data.

## Authentication

The authentication install page allows you to set up your built-in admin password. 

This account is provided to allow login even when no connection to Active Directory can be made.

## Active Directory

This is the most important of first launch steps.

`Server` - This ca be your domain name, but if that doesn't work pick a domain controller to connect to and use it's DNS name.

`Port` - The port to connect to.

`Username` - The account name excluding the domain. (eg:blazam) This account should have administrative permissions for whatever scope you intend to use the application for.

`Password` - The password for the domain account.

`Use TLS` - Whether to use TLS when connecting. For internal networks this is optional. It is highly recommended if you are communicating to your domain over the internet.

`FQDN` - The fully qualified domain name of your Active Directory domain.

`Base DN` - The base oranizational unit distinguished name from where to begin scoping the application. Any OU's above this DN are not available to Blazam.


!!! info
    
    At the bottom of the page is a connection status panel that will show you the state of the connection as you make changes.