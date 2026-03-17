# Email

`Email Enabled` - Enable or disable email functionality for the application. When disabled, no emails will be sent.

`Admin BCC` - Email addresses to blind copy on all application emails. Multiple addresses can be separated by semicolons. This is useful for administrators to monitor all outgoing emails.

`SMTP Server` - The hostname or IP address of your SMTP mail server. This can be your mail server's FQDN or IP address.

`SMTP Port` - The port to connect to your SMTP server.

Common ports: 25 (standard SMTP), 587 (submission/TLS), or 465 (SMTPS). Check with your email provider for the correct port.

`Use TLS` - Whether to use Transport Layer Security for the SMTP connection. This encrypts the connection to your mail server. Recommended for secure communications.

`Use SMTP Authentication` - Enable if your SMTP server requires authentication. When enabled, you must provide a username and password.

`SMTP Username` - The username for authenticating to the SMTP server. Only visible when SMTP Authentication is enabled.

`SMTP Password` - The password for authenticating to the SMTP server. Only visible when SMTP Authentication is enabled.

`From Address` - The email address that will appear in the "From" field of sent emails. This must be a valid email address.

`From Display Name` - The friendly name that will appear alongside the from address in email clients.

`Reply-To Address` - The email address that will receive replies when users reply to application emails. This must be a valid email address.

`Reply-To Display Name` - The friendly name that will appear alongside the reply-to address.

`Test Recipient` - An email address to send a test email to verify your email configuration is working correctly.

!!! note

	All email settings must be properly configured and saved before you can send a test email. The test email button will be disabled until the configuration is valid