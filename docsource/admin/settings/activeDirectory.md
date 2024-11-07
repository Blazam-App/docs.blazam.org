# Active Directory


`Server` - This can be your domain name, but if that doesn't work pick a domain controller to connect to and use it's DNS name.

`Port` - The port to connect to.

`Username` - The account name excluding the domain. (eg:blazam) This account should have administrative permissions for whatever scope you intend to use the application for.

`Password` - The password for the domain account.

`Use TLS` - Whether to use TLS when connecting. For internal networks this is optional. It is highly recommended if you are communicating to your domain over the internet.

`FQDN` - The fully qualified domain name of your Active Directory domain.

`Base DN` - The base organizational unit distinguished name from where to begin scoping the application. Any OU's above this DN are not available to Blazam.
