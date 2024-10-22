# Configuration
All web host application settings are set in the `appsettings.json`
file in the root path of the application directory.

!!! note

    If this is a manual installation you must create the `appsettings.json` file.
    A template is available (`appsettings.example.json`) that can be copied and renamed.

## AppSettings
`appsettings.json`
### Example File
```
{
  "Logging": {
    "LogLevel": {
      "Default": "Information",
      "Microsoft.AspNetCore": "Information",
      "Microsoft.Hosting.Lifetime": "Information",
      "Microsoft.EntityFrameworkCore.Database.Command": "Warning"
    }
  },
  "EncryptionKey": "supersecretstring",
  "DebugMode": "false",
  "ListeningAddress": "*",
  "HTTPPort": "79",
  "HTTPSPort": "442",
  "AllowedHosts": "*",
  "DatabaseType": "SQLite", //SQL,SQLite,or MySQL
  "ConnectionStrings": {

    "DBConnectionString": ""
  }

}
```
### Logging
It is recommended not to modify logging settings. They may be useful for issues that arise.


### EncryptionKey

!!! danger

    Changing this value after installation will break decryption,
    thereby preventing any successful logons.
   
!!! note

    For manual installations, be sure to change this value from it's
    default before launching the app. Make it whatever you want, as
    long as it's different

??? tip "Backup the Encryption Key!"

    It is highly recommended to backup the encryption key immediatly following the installation wizard for
    production environments.
    
    Loss of the encryption key will result in the inabillity to log in as the application `admin`, and
    break communication with your Actvie Directory, effectivley locking you out without manual modifications
    to the database.

    To backup the key from the app, go to the `Settings` page and click the `System` tab.

??? failure "Lost your encryption key?"
    
    1. Connect to your database with a management application. Modify the admin password in the table 'AppSettings' to a new password in plaintext
    1. If running as a service and forcing HTTPS, change ForceHTTPS in 'AppSettings' to 0
    1. Restart Blazam and log in with the new admin password.
    1. Reset the admin password from within Blazam, this will encypt it in the database with the new encyption key.
    1. Reset the password for Active Directory within Blazam so it is aligned with the new encyption key.
    1. Reset Duo Private Key if set.
    1. Reset Update Credentials password if set.
    1. Reupload SSL Certificate if running as a service for HTTPS

| Values      | Description                          |
| ----------- | ------------------------------------ |
| `string`      | Any string, this is the seed that generates the encryption key used by the database|

### DebugMode
| Values      | Description                          |
| ----------- | ------------------------------------ |
| `true`      | The application will provide additional debugging information to the browser (This may expose priviledged information to users, only enable for assisting development)  |
| `false`     | The application will operate in the normal mode |


### HTTPPort

!!! info

    This setting has no effect when running under IIS
| Values      | Description                          |
| ----------- | ------------------------------------ |
| `PortNumber`       | If running as a service, the application will listen for HTTP connections on this port|



### HTTPSPort

!!! info

    This setting has no effect when running under IIS
| Values      | Description                          |
| ----------- | ------------------------------------ |
| `PortNumber`       | If running as a service, the application will listen for HTTPS connections on this port|


### AllowedHosts

!!! info

    This setting has no effect when running under IIS
| Values      | Description                          |
| ----------- | ------------------------------------ |
| `*`         | Allows all IP addresses to communicate with Blazam|
| `subnet/mask`| Allows only IP's from the defined subnet to communicate with Blazam|

### DatabaseType
| Values      | Description                          |
| ----------- | ------------------------------------ |
| `SQL`       | The application will operate under SQL|
| `SQLite`    | The application will operate under SQLite|
| `MySQL`     | The application will operate under MySQL|


### DBConnectionString

| Values      | Description                          |
| ----------- | ------------------------------------ |
| `string`         | The connection string to connect to your database. If you need a generator try one of the following [SQL](https://www.aireforge.com/tools/sql-server-connection-string-generator), [Sqlite](https://www.connectionstrings.com/sqlite-net-provider/), [Mysql](https://dev.mysql.com/doc/connector-net/en/connector-net-connections-string.html).|

