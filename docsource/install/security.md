# Security

Blazam adheres to a strict delegation of elevated privileges. It is designed to run under an unprivileged user account.

!!! abstract

    The developers of Blazam always keep security and privilege protection as a top priority. 
    
    All passwords are encrypted both at rest and in transit. All incoming/outgoing connections are TLS/SSL capable.  
    
    Having said that, we take no responsibility
    for any damages incurred from your use of this software. You are encouraged to review the source code for yourself.

!!! danger

    Running the web application under elevated privileges exposes your Web Server and Active Directory to unnecessary risk of framework exploits.

## Internet Facing
Should you decide to publish Blazam to the internet, you should ensure that a valid
SSL certificate is supplied and forcing of HTTPS is enabled either in-app or via IIS.
## Active Directory User

The application only has as much privilege as you supply it. It is possible to set up an advanced permission ACL within Active
Directory for the user account provided for AD communication to limit the exposure of the application.

## Application User

!!! danger
    
    Do not run the IIS application pool or application service as an administrator or System account.
### For IIS
Use the default IIS_User account provided to the application pool.
### For Service
Using the NetworkService account is recommended.
## Folder Permissions
For most deployments, no modifications to folder permissions are required.

The following conditions warrant changing application root directory permissions:
   
* The user account used for application updates is not already an administrator of the web server.
* You want to configure a separate account to run self-updates under, if that account is not a local
administrator.

## Application Permissions
In addition to folder permissions, the account used for updating, whether a domain admin or custom account,
must be provided permissions to be able to manage IIS sites or services on the web host.

## Encryption

The application encrypts sensitive database data such as passwords. Blazam uses the `EncryptionString` from the
[appSettings.json configuration file](config.md)

??? question "How it works"
    
    The encryption key you provide is not the actual key used for encryption. This provides
    security through obscurity for peace of mind that it alone is not a key to the kingdom.

!!! tip "Backup the Encryption Key"

    It is highly recommended to back up the encryption key immediately following the installation wizard.
    
    Loss of the encryption key will result in the inability to log in as the application `admin`, and
    break communication with your Active Directory, effectively locking you out without manual modifications
    to the database.

    To back up the key from the app, go to the `Settings` page and click the `System` tab. (Coming soon)

??? failure "Lost your encryption key?"
    
    1. Connect to your database with a management application. Modify the admin password in the table 'AppSettings' to a new password in plaintext
    1. If running as a service and forcing HTTPS, change ForceHTTPS in 'AppSettings' to 0
    1. Restart Blazam and log in with the new admin password.
    1. Reset the admin password from within Blazam, this will encypt it in the database with the new encyption key.
    1. Reset the password for Active Directory within Blazam so it is aligned with the new encyption key.
    1. Reset Duo Private Key if set.
    1. Reset Email authentication password if set.
    1. Reset Update Credentials password if set.
    1. Reupload SSL Certificate if running as a service for HTTPS
    1. Any password reset PINs and Secret Questions will need to be reset for all users.
    1. Any API tokens will need to be regenerated.