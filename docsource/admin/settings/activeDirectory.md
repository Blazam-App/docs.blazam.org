# Active Directory


`Server` - This can be your domain's FQDN, but if that doesn't work pick a domain controller to connect to and use it's FQDN.

`Port` - The port to connect to. 

389 for LDAP, 636 for LDAPS, or a custom port. If you are using LDAPS, ensure that the certificate is valid and trusted by the Blazam server.

!!! note

	When connecting via LDAP, Blazam will always attempt to establish an encrypted connection using StartTLS. 
	If this fails and Use TLS is enabled, the connection will not be able to be established. If you are enforcing TLS, ensure that your domain controller supports StartTLS.

`Username` - The account name excluding the domain. (eg:blazam) This account should have administrative permissions for whatever scope you intend to use the application for.

`Password` - The password for the domain account.

`Use TLS` - Whether to force TLS when connecting. For internal networks this is optional. It is highly recommended if you are communicating to your domain over the internet.

`FQDN` - The fully qualified domain name of your Active Directory domain.

`Base DN` - The base organizational unit distinguished name from where to begin scoping the application. Any OU's above this DN are not available to Blazam.
