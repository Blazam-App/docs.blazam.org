# Security

Blazam adheres to a strict delegation of elevated privileges. It is designed to run under an un-privileged user account.


!!! abstract

    The developers of Blazam always keep security and privilege protection as a top priority. 
    
    All passwords are encrypted both at rest and in transit. All incoming/outgoing connections are TLS/SSL capable.  
    
    Having said that, we take no responsibillity
    for any damages incurred from your use of this software. You are encouraged to review the source code for yourself.

!!! danger

    Running the web application under elevated privileges exposes your Web Server and Active Directory to unneccessary risk of framework exploits.

## Internet Facing
Should you decide to publish Blazam to the internet, you should ensure that a valid
SSL certificate is supplied and forcing of HTTPS is enabled either in-app or via IIS.
## Active Directory User

The application only has as much privilege as you supply it. It is possible to set up an advanced permission ACL within Active
Directory for the user account provided for AD communication to limit the exposure of the application.

## Application User

!!! danger
    
    Do not run the IIS application pool or application service as an adminstrator or System account.
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

## Encryption

The application encrypts sensitive database data such as passwords. Blazam uses the `EncryptionString` from the
[appSettings.json configuration file](config.md)

??? question "How it works"
    
    The encryption key you provide is not the actual key used for encryption. This provides
    security through obscurity for peace of mind that it alone is not a key to the kingdom.

!!! tip "Backup the Encryption Key"

    It is highly recommended to backup the encryption key immediatly following the installation wizard.
    
    Loss of the encryption key will result in the inabillity to log in as the application `admin`, and
    break communication with your Actvie Directory, effectivley locking you out without manual modifications
    to the database.

    To backup the key from the app, go to the `Settings` page and click the `System` tab. (Coming soon)

??? failure "Lost your encryption key?"
    
    1. Connect to your database with a management application. Modify the admin password in the table 'AppSettings' to a new password in plaintext
    2. Restart Blazam and log in with the new admin password.
    3. Reset the admin password from within Blazam, this will encypt it in the database with the new encyption key.
    4. Reset the password for Active Directory within Blazam so it is aligned with the new encyption key.