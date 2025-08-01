# Web Installer
## Pre-Requisites
* Install an SQL Express, MS SQL, MySQL, MariaDB server, or use an existing one. For testing, you can opt for the file based Sqlite `DatabaseType`.
* Create an empty database, a new database user to connect with, and permissions and logons set. If you chose Sqlite, choose a destination directory and prepare folder permissions.
	* Refer to your database documentation for security setup and best practices
	

=== "Windows Host"

    Installing via the Web installer is the recommended method as it performs all required pre-installation checks automatically, and configures the application to launch based on the chosen installation type.

    The Web installer allows installing the application under IIS, or as a stand-alone service installed under Program Files.

    It always installs the latest version.

    [Download Web Installer](https://blazam.org/download)

=== "Linux Host"

    Installing via the Web installer script is the recommended method as it performs all required pre-installation checks automatically, and configures the application to launch based on the chosen installation type.

    The Web installer script allows installing the application under Apache, nginx, or as a stand-alone service installed under /opt/.

    It always installs the latest version.

     ``` bash linenums="1"
    wget https://blazam.org/download/linux_install.sh linux_install.sh
        sudo linux_install.sh
    ```
