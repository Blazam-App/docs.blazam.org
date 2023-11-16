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
### Config Options
#### Logging
It is recommended not to modify these settings


#### EncryptionKey
!!! danger

    It is critical that you changed this value
!!! note

    Changing this value after installation will break decryption,
    thereby preventing any successful logons.
| Values      | Description                          |
| ----------- | ------------------------------------ |
| `string`      | Any string, this is the seed that generates the encryption key used by the database|


#### DebugMode
| Values      | Description                          |
| ----------- | ------------------------------------ |
| `true`      | The application will provide additional debugging information to the browser (This may expose priviledged information to users, only enable for assisting development)  |
| `false`     | The application will operate in the normal mode |

#### InstallType

!!! note inline end

    This will likely not be implemented
| Values      | Description                          |
| ----------- | ------------------------------------ |
| `IIS`       | Lets the application know it is running under IIS |
| `Service`   | Lets the application know it is running as a service |


#### HTTPPort

!!! info

    This setting has no effect when running under IIS
| Values      | Description                          |
| ----------- | ------------------------------------ |
| `PortNumber`       | If running as a service, the application will listen for HTTP connections on this port|



#### HTTPSPort

!!! info

    This setting has no effect when running under IIS
| Values      | Description                          |
| ----------- | ------------------------------------ |
| `PortNumber`       | If running as a service, the application will listen for HTTPS connections on this port|


#### AllowedHosts

| Values      | Description                          |
| ----------- | ------------------------------------ |
| `*`         | Allows all IP addresses to communicate with the Blazam|
| `subnet/mask`| Allows only IP's from the defined subnet to communicate with the Blazam|

#### DatabaseType
| Values      | Description                          |
| ----------- | ------------------------------------ |
| `SQL`       | The application will use the SQLConnectionString    |
| `SQLite`    | The application will use the SQLiteConnectionString |
| `MySQL`     | The application will use the MySQLConnectionString  |


#### SQLConnectionString

| Values      | Description                          |
| ----------- | ------------------------------------ |
| `string`         | The connection string to connect to your SQL server. If you need a generator try [this one](https://www.aireforge.com/tools/sql-server-connection-string-generator).|

#### SQLiteConnectionString

| Values      | Description                          |
| ----------- | ------------------------------------ |
| `string`         | The connection string to the database file. For more info on how to make your string, [click here](https://www.connectionstrings.com/sqlite-net-provider/).|

#### MySQLConnectionString

| Values      | Description                          |
| ----------- | ------------------------------------ |
| `string`         | The connection string to connect to your Mysql server. For more info on how to make your string, [click here](https://dev.mysql.com/doc/connector-net/en/connector-net-connections-string.html).|
