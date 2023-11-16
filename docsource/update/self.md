# Self-Update

!!! info

	Self-update is now in Beta.

Blazam can update itself regardless of how it is installed.

## Setup
Some manual configuration is neccessary to perform self-updates for now.

First decide the account to use. There are two options.

1. Use the Active Directory Credentials provided to Blazam
1. Use a custom set of credentials. *(This can be a local user account with no administrative permissions)*

Finally, apply write permissions to the application installation directory 
for the chosen account.

## How?
To update go to `Configure` -> `Settings` -> `Update`, if an update is available, an update button and release notes will be available.

During a self update Blazam backs up the current installation to `C:\Windows\temp\Blazam\backup\` or wherever your Windows temporary folder is configured.