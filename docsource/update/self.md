﻿# Self-Update
Blazam can update itself regardless of how it is installed.

## Self-Update Setup
Some manual configuration is necessary to perform self-updates for now.

First decide the account to use. There are two approved options.

1. Use the Active Directory Credentials provided to Blazam
1. Use a custom set of credentials. *(This can be a local user account with no administrative permissions, but granted management permissions to IIS or the service)*

Finally, apply write permissions to the application installation directory 
for the chosen account.

## How?
To update go to `Configure` -> `Settings` -> `Update`, if an update is available, an update button and release notes will be available.

During a self update Blazam backs up the current installation to `C:\Windows\temp\Blazam\backup\` or wherever the running user's temporary folder is configured.