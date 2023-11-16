# Configuration
All web host application settings are set in the `appsettings.json`
file in the root path of the application directory.
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
  "InstallType": "IIS",
  "ListeningAddress": "*",
  "HTTPPort": "79",
  "HTTPSPort": "442",
  "AllowedHosts": "*",
  "DatabaseType": "SQLite",
  "ConnectionStrings": {
    "SQLConnectionString": "Data Source=localhost;Database=BLAZAM;Persist Security Info=True;Integrated Security=False;Connection Timeout=10;TrustServerCertificate=True;",
    "SQLiteConnectionString": "Data Source=%temp%/Blazam/database.db;",
    "MySQLConnectionString": "Server=localhost;User=blazam;Password=blazam;Database=blazam;"
  }

}
```
### Logging
It is recommended not to modify these settings


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

    To backup the key from the app, go to the `Settings` page and click the `System` tab. (Coming soon)

??? failure "Lost your encryption key?"
    
    1. Connect to your database with a management application. Modify the admin password in the table 'AppSettings' to a new password in plaintext
    2. Restart Blazam and log in with the new admin password.
    3. Reset the admin password from within Blazam, this will encypt it in the database with the new encyption key.
    4. Reset the password for Active Directory within Blazam so it is aligned with the new encyption key.

| Values      | Description                          |
| ----------- | ------------------------------------ |
| `string`      | Any string, this is the seed that generates the encryption key used by the database|

### DebugMode
| Values      | Description                          |
| ----------- | ------------------------------------ |
| `true`      | The application will provide additional debugging information to the browser (This may expose priviledged information to users, only enable for assisting development)  |
| `false`     | The application will operate in the normal mode |

### InstallType

!!! note inline end

    This will likely not be implemented
| Values      | Description                          |
| ----------- | ------------------------------------ |
| `IIS`       | Lets the application know it is running under IIS |
| `Service`   | Lets the application know it is running as a service |


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
| `*`         | Allows all IP addresses to communicate with the Blazam|
| `subnet/mask`| Allows only IP's from the defined subnet to communicate with the Blazam|

### DatabaseType
| Values      | Description                          |
| ----------- | ------------------------------------ |
| `SQL`       | The application will use the SQLConnectionString    |
| `SQLite`    | The application will use the SQLiteConnectionString |
| `MySQL`     | The application will use the MySQLConnectionString  |


### SQLConnectionString

| Values      | Description                          |
| ----------- | ------------------------------------ |
| `string`         | The connection string to connect to your SQL server. If you need a generator try [this one](https://www.aireforge.com/tools/sql-server-connection-string-generator).|

### SQLiteConnectionString

| Values      | Description                          |
| ----------- | ------------------------------------ |
| `string`         | The connection string to the database file. For more info on how to make your string, [click here](https://www.connectionstrings.com/sqlite-net-provider/).|

### MySQLConnectionString

| Values      | Description                          |
| ----------- | ------------------------------------ |
| `string`         | The connection string to connect to your Mysql server. For more info on how to make your string, [click here](https://dev.mysql.com/doc/connector-net/en/connector-net-connections-string.html).|
