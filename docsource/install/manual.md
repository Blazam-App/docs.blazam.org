## Pre-Requisites
* Install an SQL Express, MS SQL, MySQL, MariaDB server, or use an existing one. For testing, you can opt for the file based Sqlite `DatabaseType`.
* Create an empty database, a new database user to connect with, and permissions and logons set. If you chose Sqlite, choose a destination directory and prepare folder permissions.
	* Refer to your database documentation for security setup and best practices

## [Download](https://blazam.org/download)
=== "Windows Host" 
    
    ### Install under IIS
    Feel free to deviate from the instructions to fit your desired deployment

    1. Download and [Install .NET Core 8.x Web Hosting Bundle](https://aka.ms/dotnet-download), also from Microsoft.
    1. Ensure the Web Socket Module is installed (Required)
	    * You can find the module under `Server Roles` -> `Web Server` -> `Application Developer` -> `Web Sockets`.
    1. Install the Application Initialization Module (Recommended)
	    * You can find the module under `Server Roles` -> `Web Server` -> `Application Developer` -> `Application Initialization`.
    1. Copy contents of zip file to a directory accessible by IIS
    1. Create new Site in IIS for Blazam
	    * Point the root directory to the directory you unzipped the files to.

    1. Set ApplicationPool to AlwaysRunning (Recommended)
	    * In IIS Manager, right click on the application pool under which the application runs and select `Advanced Settings`.	
        * Set start mode to `Always Running`.
    1. Set IIS Site to Preload (Recommended)
	    * In IIS Manager, right click on the site for the application, select `Manage Website` -> `Advanced Settings` and set the `Preload Enabled` value to `true`.

    1. Continue with [Configuration](config.md)
    ### Install as Service

    1. Download and [Install .NET Core 8.x Runtime](https://aka.ms/dotnet-download) from Microsoft.
    1. Extract the application to any directory eg:`C:\Program Files\Blazam`
    1. Using nssm.exe in the extracted files, install `BLAZAM.exe` as a service.
    1. Continue with [Configuration](config.md)


=== "Linux Host"

    !!! warning

        The Linux compatible Blazam is not yet available for public use in production. Beta testing only!


    Installing Blazam on Linux manually is not a trivial
    undertaking. Using the install.sh script is more user
    friendly and streamlined for installation on Linux.
    ### Install under Nginx

    1. Install the necessary dependency packages from apt using the command
    ``` bash
    sudo apt-get install -y aspnetcore-runtime-8.0 openssl jq libldap2 curl wget unzip
    ```
    1. Create a libldap.so symlink using
    ``` bash
    ln -sf "${target_lib_path}" "/usr/lib/x86_64-linux-gnu/libldap-2.5.so.0"
    ```
    ### Insalll under Apache
    ### Install as Service

